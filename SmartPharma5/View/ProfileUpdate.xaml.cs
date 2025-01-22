using SmartPharma5.ViewModel;
using SmartPharma5.Model;
using Acr.UserDialogs;

namespace SmartPharma5.View;

public partial class ProfileUpdate : ContentPage
{
    public ProfileUpdate(uint a)
    {
        InitializeComponent();
        BindingContext = new UpdateProfileMV(a);
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



}