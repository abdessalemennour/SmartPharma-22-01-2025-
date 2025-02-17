﻿using System;
using System.IO;
using System.Threading.Tasks;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using MvvmHelpers;
using MvvmHelpers.Commands;
using SmartPharma5.Model;

namespace SmartPharma5.ViewModel
{
    public class DocumentViewModel : BaseViewModel
    {
        public ICommand SaveDocumentCommand { get; }

        public DocumentViewModel()
        {
            SaveDocumentCommand = new AsyncCommand<int>(SaveDocumentAsync); // <-- Utiliser AsyncCommand<int>
        }

        public async Task SaveDocumentAsync(int opportunityId) // <-- Ajouter opportunityId en paramètre
        {
            try
            {
                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "Veuillez sélectionner un fichier",
                    FileTypes = FilePickerFileType.Images
                });

                if (result != null)
                {
                    var document = new Document
                    {
                        name = result.FileName,
                        create_date = DateTime.Now,
                        extension = Path.GetExtension(result.FileName),
                        content = await File.ReadAllBytesAsync(result.FullPath)
                    };

                    // Appeler SaveToDatabase avec les deux paramètres
                    bool isSaved = await Document.SaveToDatabase(document, opportunityId); // <-- Correction ici
                    if (isSaved)
                    {
                        await Application.Current.MainPage.DisplayAlert("Succès", "Document sauvegardé avec succès", "OK");
                    }
                    else
                    {
                        await Application.Current.MainPage.DisplayAlert("Erreur", "Échec de la sauvegarde du document", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
            }
        }
    }
}