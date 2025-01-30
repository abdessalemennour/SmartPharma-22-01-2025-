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

        // Lier le contexte de donn�es ici si n�cessaire
        BindingContext = new DocumentViewModel();
    }
    public ProfileUpdate(uint a)
    {
        InitializeComponent();
        BindingContext = new UpdateProfileMV(a);
        this.Partner = new Partner(); // Exemple, initialiser Partner si n�cessaire
        this.Partner.Id = a; // Exemple d'affectation de l'ID � Partner
    }
    private async void OnButtonClicked(object sender, EventArgs e)
    {
        try
        {
            UserDialogs.Instance.ShowLoading("Loading...");
            await Task.Delay(200);
            // R�cup�rer la localisation de l'utilisateur
            var location = await Geolocation.GetLocationAsync();

            if (location != null)
            {
                // Formater les coordonn�es GPS
                string formattedLatitude = location.Latitude.ToString("F6", System.Globalization.CultureInfo.InvariantCulture);
                string formattedLongitude = location.Longitude.ToString("F6", System.Globalization.CultureInfo.InvariantCulture);

                // Construire les coordonn�es GPS sous forme de cha�ne
                string gpsCoordinates = $"{formattedLatitude},{formattedLongitude}";

                // Afficher une confirmation que la position a �t� r�cup�r�e
                //await DisplayAlert("Succ�s", "Votre position a �t� r�cup�r�e avec succ�s.", "OK");

                // Mettre � jour la base de donn�es avec les coordonn�es GPS
                var viewModel = BindingContext as UpdateProfileMV;
                if (viewModel != null && viewModel.Partner != null)
                {
                    // Appeler la m�thode pour mettre � jour la colonne DeliveryNumber dans la base de donn�es
                    await Partner.UpdateGpsCoordinates(viewModel.Partner.Id);

                    // Afficher une confirmation que les coordonn�es ont �t� mises � jour
                    //await DisplayAlert("Succ�s", "Les coordonn�es GPS ont �t� mises � jour.", "OK");

                    // Ouvrir Google Maps pour afficher la position actuelle
                    string uri = $"https://www.google.com/maps/search/?api=1&query={formattedLatitude},{formattedLongitude}";
                    await Launcher.OpenAsync(new Uri(uri));
                }
            }
            else
            {
                await DisplayAlert("Erreur", "Impossible de r�cup�rer votre position GPS.", "OK");
            }
        }
        catch (Exception ex)
        {
            // G�rer les erreurs qui peuvent survenir
            await DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
        }
        UserDialogs.Instance.HideLoading();
    }
    private async void OnDocumentButtonClicked(object sender, EventArgs e)
    {
        if (this.Partner != null)
        {
            var partnerId = this.Partner.Id;

            // Passer l'ID du partenaire � ProfileUpdateFileSelectionView
            await Navigation.PushAsync(new ProfileUpdateFileSelectionView(partnerId));
        }
        else
        {
            await DisplayAlert("Erreur", "Aucun partenaire trouv�.", "OK");
        }
    }


    /* private async void OnDocumentButtonClicked(object sender, EventArgs e)
     {
         // V�rifie si le partenaire existe
         if (this.Partner != null)
         {
             // Si le partenaire existe, r�cup�rer son ID
             var partnerId = this.Partner.Id;

             // Naviguer vers une nouvelle page en passant l'ID du partenaire
             await Navigation.PushAsync(new PartnerDetailView(partnerId));
         }
         else
         {
             // Si aucun partenaire trouv�, afficher un message d'erreur
             await DisplayAlert("Erreur", "Aucun partenaire trouv�.", "OK");
         }
     }
    */




}