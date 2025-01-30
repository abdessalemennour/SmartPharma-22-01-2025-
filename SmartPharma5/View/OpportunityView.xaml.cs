using Acr.UserDialogs;
using DevExpress.Maui.Editors;
using SmartPharma5.Model;
using SmartPharma5.ViewModel;
using DevExpress.Maui.Controls;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using CommunityToolkit.Maui.Views;

namespace SmartPharma5.View;

[XamlCompilation(XamlCompilationOptions.Compile)]
public partial class OpportunityView : ContentPage
{
    public Opportunity Opportunity;
    private bool isDragging = false;
    private string fileName;
    private string filePath;
    public OpportunityView()
    {
        InitializeComponent();

        BindingContext = new DocumentViewModel();
    }
    private async void OnSaveDocumentClicked(object sender, EventArgs e)
    {
        var opportunity = this.Opportunity; 
        await Navigation.PushAsync(new FileSelectionView(opportunity));
    }


   /* private async void OnSelectFileClicked(object sender, EventArgs e)
    {
        try
        {
            string action = await DisplayActionSheet(
                "Choose an option",
                "Cancel",
                null,
                "Add File",
                "Camera");

            if (action == "Cancel" || action == null)
            {
                return;
            }

            string filePath = null;
            string fileName = null;

            DateTime selectedDate = DateTime.Now; // Date actuelle au moment de la sélection

            if (action == "Add File")
            {
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
                    filePath = result.FullPath;
                    fileName = result.FileName;
                }
            }
            else if (action == "Camera")
            {
                var photo = await MediaPicker.CapturePhotoAsync();

                if (photo != null)
                {
                    filePath = Path.Combine(FileSystem.CacheDirectory, photo.FileName);

                    using (var stream = await photo.OpenReadAsync())
                    using (var fileStream = new FileStream(filePath, FileMode.Create, FileAccess.Write))
                    {
                        await stream.CopyToAsync(fileStream);
                    }

                    fileName = photo.FileName;
                }
            }

            if (filePath == null || fileName == null)
            {
                return; // Aucun fichier sélectionné ou capturé
            }

            // Ajouter un délai avant d'afficher l'indicateur de chargement
            await Task.Delay(200); // Délai de 200 ms

            // Afficher l'indicateur de chargement
            UserDialogs.Instance.ShowLoading("Loading...");

            // Appeler le pop-up pour récupérer les informations supplémentaires
            try
            {
                var documentTypes = await Document.GetDocumentTypesAsync();
                if (documentTypes == null || documentTypes.Count == 0)
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
                    date = selectedDate,
                    memo = memo,
                    description = description,
                    type_document = (uint)selectedTypeId
                };

                // Ajouter le document temporaire à la liste
                if (BindingContext is OpportunityViewModel viewModel)
                {
                    viewModel.TemporaryDocuments.Add(temporaryDocument);
                }

                // Afficher le message de confirmation
                ConfirmationLabel.Text = $"File added: {fileName}";
                ConfirmationFrame.IsVisible = true;
            }
            catch (InvalidOperationException ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
            }
            finally
            {
                // Masquer l'indicateur de chargement
                UserDialogs.Instance.HideLoading();
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
        }
    }*/

    private void OnCloseConfirmationClicked(object sender, EventArgs e)
    {
        // Masquer le Frame de confirmation
        ConfirmationFrame.IsVisible = false;

        // Annuler le document temporaire dans le ViewModel
        if (BindingContext is OpportunityViewModel viewModel)
        {
            viewModel.CancelTemporaryDocument();
        }
    }

    // Méthode pour sauvegarder un fichier dans la base de données
    /********************************************/
    /*  private async Task SaveFileToDatabase(string filePath, string fileName, string memo, string description, int typeId, DateTime selectedDate)
      {
          UserDialogs.Instance.ShowLoading("Loading...");
          await Task.Delay(400);
          try
          {
              string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(fileName);
              string extension = Path.GetExtension(fileName);
              byte[] fileContent = await File.ReadAllBytesAsync(filePath);

              Document document = new Document
              {
                  name = fileNameWithoutExtension,
                  extension = extension,
                  content = fileContent,
                  create_date = DateTime.Now,
                  date = selectedDate,
                  memo = string.IsNullOrWhiteSpace(memo) ? null : memo,
                  description = string.IsNullOrWhiteSpace(description) ? null : description,
                  type_document = (uint)typeId
              };

              bool isSaved = await Document.SaveToDatabase(document);

              if (isSaved)
              {
                  // Afficher le message de confirmation dans le Frame
                  ConfirmationLabel.Text = $"File added: {fileName}";
                  ConfirmationFrame.IsVisible = true; 
              }
              else
              {

                  await DisplayAlert("Error", "An error occurred while saving the document.", "OK");
              }
          }
          catch (Exception ex)
          {

              await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
          }
          finally
          {
              UserDialogs.Instance.HideLoading();
          }
      }*/



    /****************************************/
    // Handle touch events for the button
    private void OnButtonTouchDown(object sender, TouchEventArgs e)
    {
        // Start dragging when the touch is pressed
        isDragging = true;
    }
    private void OnButtonTouchMove(object sender, TouchEventArgs e)
    {
        if (isDragging)
        {
            // Update the position of the button based on touch coordinates
            var button = (Button)sender;
            //button.TranslationX = e.Location.X;
            //button.TranslationY = e.Location.Y;

        }
    }

    private void OnButtonTouchUp(object sender, TouchEventArgs e)
    {
        // Stop dragging when the touch is released
        isDragging = false;
    }
    public OpportunityView(Opportunity opportunity)
    {
        InitializeComponent();
        DbConnection.Deconnecter();
        Opportunity = opportunity;

        if (Opportunity.Id == 0)
            quotation.IsVisible = false;
        if (Opportunity.Id != 0)
            Opportunity = new Opportunity(Opportunity.Id);

        if (opportunity.Id != 0 && Opportunity.StateLines != null)
            foreach (SmartPharma5.Model.Opportunity.State S in Opportunity.StateLines)
            {
                Label header = new Label
                {
                    BackgroundColor = Colors.White,
                    Margin = 0,
                    Padding = new Thickness(4),
                    FontSize = 12,
                    TextColor = Colors.Black,
                    HorizontalOptions = LayoutOptions.Center

                };

                ImageButton imageButton = new ImageButton
                {
                    HorizontalOptions = LayoutOptions.End,
                    Margin = 0,
                    Padding = 0,
                    BackgroundColor = Colors.White,
                    CornerRadius = 0,


                    Source = "chevronrightsolid.png",
                    BorderColor = Colors.White,
                    Scale = 1,
                };


                header.Text = S.name.ToString() + "\n" + S.Date.ToString("dd/MM/yyyy  h:mm tt");
                TimeLine.Children.Add(header);
                TimeLine.Children.Add(imageButton);
                TimeLine.BackgroundColor = Colors.White;
                TimeLine.Margin = new Thickness(1, 4, 1, 0);
            }
        BindingContext = new OpportunityViewModel(Opportunity);
    }

    private void AutoCompleteEdit_TextChanged(object sender, DevExpress.Maui.Editors.AutoCompleteEditTextChangedEventArgs e)
    {
        AutoCompleteEdit edit = sender as AutoCompleteEdit;
        var search = edit.Text.ToLowerInvariant().ToString();
        var shop = BindingContext as OpportunityViewModel;


        if (string.IsNullOrWhiteSpace(search))
        {
            WholeCollectionView.ItemsSource = shop.WholesalerList.ToList();
        }
        else
        {
            WholeCollectionView.ItemsSource = shop.WholesalerList.Where(i => i.Name.ToLowerInvariant().Contains(search)).ToList();
        }
    }

    [Obsolete]
    protected override bool OnBackButtonPressed()
    {

        Device.BeginInvokeOnMainThread(async () =>
        {
            if (await App.Current.MainPage.DisplayAlert("Alert?", "Are you sure you want to exit this opportunity?\nYou will not be able to continue it.", "Yes", "No"))
            {
                base.OnBackButtonPressed();

                await App.Current.MainPage.Navigation.PopAsync();
            }
        });

        // Always return true because this method is not asynchronous.
        // We must handle the action ourselves: see above.
        return true;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        if (sender is Frame frame && frame.BindingContext is Partner partner)
        {
            var shop = BindingContext as OpportunityViewModel;
            shop.WholesalerPopup = false;

            shop.Opportunity.Dealer = (int)partner.Id;
            shop.Opportunity.dealerName = (string)partner.Name;

            shop.WholeSalerRemoveIsvisible = true;
            shop.WholesalerTitleVisible = true;
        }
    }

    private async void SimpleButton_Clicked(object sender, EventArgs e)
    {
        //await Shell.Current.GoToAsync("../OpportunityView");

    }

    private async void SimpleButton_Clicked_1(object sender, EventArgs e)
    {
        //await Shell.Current.GoToAsync("..");
    }


}

/***************************/
/* private async void OnSelectFileClicked(object sender, EventArgs e)
 {
     try
     {
         // Afficher un menu d'options avant la sélection de fichier
         string action = await DisplayActionSheet(
             "Choose an option",
             "Cancel",
             null,
             "Add File",
             "Camera");

         if (action == "Cancel" || action == null)
         {
             return; // L'utilisateur a annulé l'action
         }

         if (action == "Add File")
         {
             // Ouvrir le sélecteur de fichiers
             var result = await FilePicker.PickAsync(new PickOptions
             {
                 PickerTitle = "Please select a file",
                 FileTypes = new FilePickerFileType(new Dictionary<DevicePlatform, IEnumerable<string>>
             {
                 { DevicePlatform.Android, new[] { "image/*", "application/pdf" } } // Accepter images et PDF
             })
             });

             if (result != null)
             {
                 // Lire les informations du fichier sélectionné
                 string fileName = Path.GetFileNameWithoutExtension(result.FileName); // Nom sans extension
                 string extension = Path.GetExtension(result.FileName); // Extension
                 byte[] fileContent = await File.ReadAllBytesAsync(result.FullPath); // Contenu
                 DateTime selectedDate = DateTime.Now; // Date de sélection

                 // Demander un memo
                 string memo = await DisplayPromptAsync(
                     "Memo",
                     "Enter a note and click Next to continue (optional)",
                     placeholder: "Memo",
                     accept: "Next",
                     cancel: "Pass"
                 );

                 if (memo == null)
                 {
                     await DisplayAlert("Cancelation", "The selection process has been cancelled.", "OK");
                     return;
                 }

                 // Demander une description
                 string description = await DisplayPromptAsync(
                     "Description",
                     "Enter a description (optional)",
                     placeholder: "Description",
                     accept: "Next",
                     cancel: "Pass"
                 );

                 if (description == null)
                 {
                     await DisplayAlert("Cancelation", "The selection process has been cancelled.", "OK");
                     return;
                 }

                 // Récupérer les types de documents depuis la base de données
                 var documentTypes = await Document.GetDocumentTypesAsync();
                 if (documentTypes == null || documentTypes.Count == 0)
                 {
                     await DisplayAlert("Error", "Unable to retrieve document types.", "OK");
                     return;
                 }

                 // Afficher les types de documents
                 string[] typeNames = documentTypes.Values.ToArray();
                 string selectedTypeName = await DisplayActionSheet(
                     "Select a document type",
                     "Cancel",
                     null,
                     typeNames
                 );

                 if (selectedTypeName == null || selectedTypeName == "Cancel")
                 {
                     await DisplayAlert("Cancelation", "The selection process has been cancelled.", "OK");
                     return;
                 }

                 // Obtenir l'ID correspondant au type sélectionné
                 int selectedTypeId = documentTypes.FirstOrDefault(x => x.Value == selectedTypeName).Key;

                 // Créer un objet Document
                 Document document = new Document
                 {
                     name = fileName,
                     extension = extension,
                     content = fileContent,
                     create_date = DateTime.Now,
                     date = selectedDate,
                     memo = string.IsNullOrWhiteSpace(memo) ? null : memo,
                     description = string.IsNullOrWhiteSpace(description) ? null : description,
                     type_document = (uint)selectedTypeId
                 };

                 // Enregistrer dans la base de données
                 bool isSaved = await Document.SaveToDatabase(document);

                 if (isSaved)
                 {
                     await DisplayAlert("Success", "The document has been saved successfully.", "OK");
                 }
                 else
                 {
                     await DisplayAlert("Error", "An error occurred while saving the document.", "OK");
                 }
             }
             else
             {
                 await DisplayAlert("No file", "No files selected.", "OK");
             }
         }
         else if (action == "Camera")
         {
             // Logique pour la caméra (peut être ajoutée ici)
             await DisplayAlert("Camera", "Camera functionality is not yet implemented.", "OK");
         }
     }
     catch (Exception ex)
     {
         await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
     }
 }*/

    /*private async Task SaveFileToDatabase(string filePath, string fileName)
    {
        try
        {
            string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(fileName);
            string extension = Path.GetExtension(fileName);
            byte[] fileContent = await File.ReadAllBytesAsync(filePath);

            // Récupérer les types de document
            var documentTypes = await Document.GetDocumentTypesAsync();
            if (documentTypes == null || documentTypes.Count == 0)
            {
                await DisplayAlert("Error", "Unable to retrieve document types.", "OK");
                return;
            }

            string[] typeNames = documentTypes.Values.ToArray();

            // Afficher une boîte de dialogue unique pour recueillir toutes les informations
            string promptResult = await DisplayPromptAsync(
                "Document Information",
                "Enter the details separated by a comma (,):\n\n1. Memo (optional)\n2. Description (optional)\n3. Document Type",
                placeholder: "Memo,Description,Document Type",
                accept: "Save",
                cancel: "Cancel"
            );

            if (string.IsNullOrWhiteSpace(promptResult))
            {
                await DisplayAlert("Cancelation", "The selection process has been cancelled.", "OK");
                return;
            }

            // Séparer les valeurs saisies
            var parts = promptResult.Split(',');
            if (parts.Length < 3)
            {
                await DisplayAlert("Error", "Please provide all required information: Memo, Description, and Document Type.", "OK");
                return;
            }

            string memo = string.IsNullOrWhiteSpace(parts[0]) ? null : parts[0].Trim();
            string description = string.IsNullOrWhiteSpace(parts[1]) ? null : parts[1].Trim();
            string selectedTypeName = parts[2].Trim();

            // Vérifier le type de document sélectionné
            if (!documentTypes.Values.Contains(selectedTypeName))
            {
                await DisplayAlert("Error", "Invalid document type. Please try again.", "OK");
                return;
            }

            int selectedTypeId = documentTypes.FirstOrDefault(x => x.Value == selectedTypeName).Key;

            // Créer le document
            Document document = new Document
            {
                name = fileNameWithoutExtension,
                extension = extension,
                content = fileContent,
                create_date = DateTime.Now,
                date = DateTime.Now,
                memo = memo,
                description = description,
                type_document = (uint)selectedTypeId
            };

            // Enregistrer dans la base de données
            bool isSaved = await Document.SaveToDatabase(document);

            if (isSaved)
            {
                await DisplayAlert("Success", "The document has been saved successfully.", "OK");
            }
            else
            {
                await DisplayAlert("Error", "An error occurred while saving the document.", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"An error has occurred: {ex.Message}", "OK");
        }
    }
    */
    /***************************/
