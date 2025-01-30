using SmartPharma5.ViewModel;
using SmartPharma5.Model;
using Acr.UserDialogs;

namespace SmartPharma5.View;
[XamlCompilation(XamlCompilationOptions.Compile)]

public partial class ProfileUpdate : ContentPage
{
    public Partner Partner { get; set; }

    public ProfileUpdate()
    {
        InitializeComponent();

        // Lier le contexte de données ici si nécessaire
        BindingContext = new DocumentViewModel();
    }
    public ProfileUpdate(uint a)
    {
        InitializeComponent();
        BindingContext = new UpdateProfileMV(a);
        this.Partner = new Partner(); // Exemple, initialiser Partner si nécessaire
        this.Partner.Id = a; // Exemple d'affectation de l'ID à Partner
    }
    private async void OnButtonClicked(object sender, EventArgs e)
    {
        try
        {
            UserDialogs.Instance.ShowLoading("Loading...");
            await Task.Delay(200);
            // Récupérer la localisation de l'utilisateur
            var location = await Geolocation.GetLocationAsync();

            if (location != null)
            {
                // Formater les coordonnées GPS
                string formattedLatitude = location.Latitude.ToString("F6", System.Globalization.CultureInfo.InvariantCulture);
                string formattedLongitude = location.Longitude.ToString("F6", System.Globalization.CultureInfo.InvariantCulture);

                // Construire les coordonnées GPS sous forme de chaîne
                string gpsCoordinates = $"{formattedLatitude},{formattedLongitude}";

                // Afficher une confirmation que la position a été récupérée
                //await DisplayAlert("Succès", "Votre position a été récupérée avec succès.", "OK");

                // Mettre à jour la base de données avec les coordonnées GPS
                var viewModel = BindingContext as UpdateProfileMV;
                if (viewModel != null && viewModel.Partner != null)
                {
                    // Appeler la méthode pour mettre à jour la colonne DeliveryNumber dans la base de données
                    await Partner.UpdateGpsCoordinates(viewModel.Partner.Id);

                    // Afficher une confirmation que les coordonnées ont été mises à jour
                    //await DisplayAlert("Succès", "Les coordonnées GPS ont été mises à jour.", "OK");

                    // Ouvrir Google Maps pour afficher la position actuelle
                    string uri = $"https://www.google.com/maps/search/?api=1&query={formattedLatitude},{formattedLongitude}";
                    await Launcher.OpenAsync(new Uri(uri));
                }
            }
            else
            {
                await DisplayAlert("Erreur", "Impossible de récupérer votre position GPS.", "OK");
            }
        }
        catch (Exception ex)
        {
            // Gérer les erreurs qui peuvent survenir
            await DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
        }
        UserDialogs.Instance.HideLoading();
    }
    private async void OnDocumentButtonClicked(object sender, EventArgs e)
    {
        if (this.Partner != null)
        {
            var partnerId = this.Partner.Id;

            // Passer l'ID du partenaire à ProfileUpdateFileSelectionView
            await Navigation.PushAsync(new ProfileUpdateFileSelectionView(partnerId));
        }
        else
        {
            await DisplayAlert("Erreur", "Aucun partenaire trouvé.", "OK");
        }
    }


    /* private async void OnDocumentButtonClicked(object sender, EventArgs e)
     {
         // Vérifie si le partenaire existe
         if (this.Partner != null)
         {
             // Si le partenaire existe, récupérer son ID
             var partnerId = this.Partner.Id;

             // Naviguer vers une nouvelle page en passant l'ID du partenaire
             await Navigation.PushAsync(new PartnerDetailView(partnerId));
         }
         else
         {
             // Si aucun partenaire trouvé, afficher un message d'erreur
             await DisplayAlert("Erreur", "Aucun partenaire trouvé.", "OK");
         }
     }
    */




}