using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Acr.UserDialogs;
using CommunityToolkit.Maui.Views;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using MySqlConnector;
using SmartPharma5.Model;
using SmartPharma5.ViewModel;

namespace SmartPharma5.View
{
    public partial class FileSelectionView : ContentPage
    {
        public Opportunity Opportunity { get; set; } // Stocker l'instance de Opportunity
        public ObservableCollection<Document> Documents { get; set; } = new ObservableCollection<Document>();

        public FileSelectionView(Opportunity opportunity)
        {
            InitializeComponent();
            this.Opportunity = opportunity;
            this.BindingContext = this; 
            LoadDocumentsAsync();
        }
        /***************ouverture du document**************/
        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var tappedFrame = sender as Frame;
            var document = tappedFrame?.BindingContext as Document;

            if (document != null)
            {
                await OpenDocumentAsync(document);
            }
        }

        private async Task OpenDocumentAsync(Document document)
        {
            try
            {
                UserDialogs.Instance.ShowLoading("Opening...");

                // Chargez le contenu du fichier uniquement si nécessaire
                if (document.content == null)
                {
                    document.content = await Document.GetDocumentContentAsync(document.Id);
                }

                if (document.content == null || document.content.Length == 0)
                {
                    await DisplayAlert("Error", "Document is empty or invalid.", "OK");
                    return;
                }

                string filePath = Path.Combine(FileSystem.CacheDirectory, document.name + document.extension);
                await File.WriteAllBytesAsync(filePath, document.content);
                await Launcher.OpenAsync(new OpenFileRequest
                {
                    File = new ReadOnlyFile(filePath)
                });
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
            }
            finally
            {
                UserDialogs.Instance.HideLoading();
            }
        }
        /************************************************/
        private async Task LoadDocumentsAsync()
        {
            try
            {
                UserDialogs.Instance.ShowLoading("Loading...");
                await Task.Delay(200);
                // Récupérer les documents correspondant à l'ID de l'opportunité
                var documents = await Document.GetDocumentsByOpportunityIdAsync(this.Opportunity.Id);

                if (documents != null && documents.Any())
                {
                    // Ajouter les documents à la collection
                    Documents.Clear();
                    foreach (var document in documents)
                    {
                        Documents.Add(document);
                    }
                }
                else
                {
                    await DisplayAlert("Info", "No documents found for this opportunity.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
            }
            finally
            {
                UserDialogs.Instance.HideLoading();
            }
        }

        private async void OnAddFileClicked(object sender, EventArgs e)
        {
            try
            {
                UserDialogs.Instance.ShowLoading("Loading...");
               // await Task.Delay(200);
                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "Please select a file",
                    FileTypes = new FilePickerFileType(new Dictionary<DevicePlatform, IEnumerable<string>>
                    {
                        { DevicePlatform.Android, new[] { "image/*", "application/pdf" } }
                    })
                });

                if (result != null)
                {
                    string filePath = result.FullPath;
                    string fileName = result.FileName;
                    await ProcessFile(filePath, fileName);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
            }
            UserDialogs.Instance.HideLoading();

        }

        private async void OnTakePhotoClicked(object sender, EventArgs e)
        {
            try
            {
                UserDialogs.Instance.ShowLoading("Loading...");
                //await Task.Delay(200);
                var photo = await MediaPicker.CapturePhotoAsync();

                if (photo != null)
                {
                    string filePath = Path.Combine(FileSystem.CacheDirectory, photo.FileName);

                    using (var stream = await photo.OpenReadAsync())
                    using (var fileStream = new FileStream(filePath, FileMode.Create, FileAccess.Write))
                    {
                        await stream.CopyToAsync(fileStream);
                    }

                    string fileName = photo.FileName;
                    await ProcessFile(filePath, fileName);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
            }
            UserDialogs.Instance.HideLoading();

        }

        private async Task ProcessFile(string filePath, string fileName)
        {
            var documentTypes = await Document.GetDocumentTypesAsync();
            if (documentTypes == null || !documentTypes.Any())
            {
                await DisplayAlert("Error", "Unable to retrieve document types.", "OK");
                return;
            }

            var popup = new CustomPopup(documentTypes);
            var result = await this.ShowPopupAsync(popup);

            if (result == null)
            {
                await DisplayAlert("Cancelation", "The selection process has been cancelled.", "OK");
                return;
            }

            // Récupérer les données du popup
            var data = (dynamic)result;
            var memo = data.Memo;
            var description = data.Description;
            var selectedTypeId = data.TypeId;

            // Créer un document temporaire
            var temporaryDocument = new Document
            {
                name = Path.GetFileNameWithoutExtension(fileName),
                extension = Path.GetExtension(fileName),
                content = await File.ReadAllBytesAsync(filePath),
                create_date = DateTime.Now,
                date = DateTime.Now,
                memo = memo,
                description = description,
                type_document = (uint)selectedTypeId
            };
            temporaryDocument.size = temporaryDocument.content?.LongLength ?? 0;
            try
            {
                // Récupérer l'ID de l'opportunité
                int opportunityId = Opportunity.Id;
                bool isSaved = await Document.SaveToDatabase(temporaryDocument, opportunityId);

                if (isSaved)
                {
                    // Ajouter le document temporaire à la liste dans le ViewModel
                    if (BindingContext is OpportunityViewModel viewModel)
                    {
                        viewModel.TemporaryDocuments.Add(temporaryDocument);
                    }

                    // Afficher un message de confirmation
                    await DisplayAlert("Success", $"File added: {fileName}", "OK");

                    // Recharger les documents après l'ajout
                    await LoadDocumentsAsync();
                }
                else
                {
                    await DisplayAlert("Error", "Failed to save the document to the database.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error occurred while saving the document: {ex.Message}", "OK");
            }
        }

        /***************ouverture du document**************/
       /* private async void ViewDetails_Clicked(object sender, EventArgs e)
        {
            var button = sender as ImageButton; 
            var document = button?.BindingContext as Document;

            if (document != null)
            {
                try
                {
                    UserDialogs.Instance.ShowLoading("Loading...");
                    await Task.Delay(200);

                    if (document.content == null || document.content.Length == 0)
                    {
                        await DisplayAlert("Error", "Document is empty or invalid.", "OK");
                        return;
                    }

                    string filePath = Path.Combine(FileSystem.CacheDirectory, document.name + document.extension);
                    await File.WriteAllBytesAsync(filePath, document.content);
                    await Launcher.OpenAsync(new OpenFileRequest
                    {
                        File = new ReadOnlyFile(filePath)
                    });
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
                }
                finally
                {
                    UserDialogs.Instance.HideLoading();
                }
            }
        }*/
        private async void OnDeleteClicked(object sender, EventArgs e)
        {
            var button = sender as ImageButton;
            var document = button?.BindingContext as Document;

            if (document != null)
            {
                bool confirm = await DisplayAlert("Confirmation", "Are you sure you want to delete this document?", "Yes", "No");
                if (confirm)
                {
                    try
                    {
                        // Supprimer le document de la base de données
                        bool isDeleted = await Document.DeleteDocumentAsync(document.Id);

                        if (isDeleted)
                        {
                            // Supprimer le document de la liste
                            Documents.Remove(document);
                            await DisplayAlert("Success", "Document deleted successfully.", "OK");
                        }
                        else
                        {
                            await DisplayAlert("Error", "Failed to delete the document.", "OK");
                        }
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
                    }
                }
            }
        }

      
    }
}