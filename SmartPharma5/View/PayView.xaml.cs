/*using SmartPharma5.Model;
using SmartPharma5.ViewModel;

namespace SmartPharma5.View;

[XamlCompilation(XamlCompilationOptions.Compile)]
public partial class PayView : ContentPage
{
    public Payment Payment { get; set; }

    public PayView()
    {
        InitializeComponent();
        Payment = new Payment(); // Assurez-vous d'initialiser Payment
        BindingContext = new PaymentViewModel(Payment);
    }

    public PayView(Payment payment)
    {
        InitializeComponent();
        Payment = payment ?? throw new ArgumentNullException(nameof(payment), "Payment ne peut pas être null.");
        BindingContext = new PaymentViewModel(payment);
    }

    private async void OnPaymentButtonClicked(object sender, EventArgs e)
    {
        try
        {
            if (Payment == null || Payment.Id == 0)
            {
                await DisplayAlert("Erreur", "Aucun paiement valide sélectionné.", "OK");
                return;
            }

            // Navigation vers PaymentFileSelectionView avec le paiement
            await Navigation.PushAsync(new PaymentFileSelectionView(Payment));
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erreur dans OnPaymentButtonClicked : {ex.Message}");
            await DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
        }
    }


}*/
/*
 using SmartPharma5.Model;
using SmartPharma5.ViewModel;

namespace SmartPharma5.View;

public partial class PayView : ContentPage
{
    public PayView()
    {
        InitializeComponent();
        //BindingContext = new PaymentViewModel();
    }
    public PayView(Payment payment)
    {
        InitializeComponent();
        BindingContext = new PaymentViewModel(payment);
    }
    private void DataGridView_Tap(object sender, DevExpress.Maui.DataGrid.DataGridGestureEventArgs e)
    {
        var ovm = BindingContext as ViewModel.PaymentViewModel;
        ovm.Payment.SetAmount();
    }
}*/

using SmartPharma5.Model;
using SmartPharma5.ViewModel;

namespace SmartPharma5.View;
[XamlCompilation(XamlCompilationOptions.Compile)]

public partial class PayView : ContentPage
{
    public Payment Payment;
    public PayView()
    {
        InitializeComponent();
        //BindingContext = new PaymentViewModel();
    }
    public PayView(Payment payment)
    {
        InitializeComponent();
        Payment = payment; // Assurez-vous de stocker le paiement
        BindingContext = new PaymentViewModel(payment);
    }

    private void DataGridView_Tap(object sender, DevExpress.Maui.DataGrid.DataGridGestureEventArgs e)
    {
        var ovm = BindingContext as ViewModel.PaymentViewModel;
        ovm.Payment.SetAmount();
    }
    private async void OnSaveDocumentClicked(object sender, EventArgs e)
    {
        try
        {
            if (Payment == null || Payment.Id == 0)
            {
                await DisplayAlert("Erreur", "Aucun paiement valide sélectionné.", "OK");
                return;
            }

            await Navigation.PushAsync(new PaymentFileSelectionView(Payment));
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erreur dans OnPaymentButtonClicked : {ex.Message}");
            await DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
        }
    }
    /*
      private async void OnSaveDocumentClicked(object sender, EventArgs e)
    {
        try
        {
            if (Payment == null || Payment.Id == 0)
            {
                await DisplayAlert("Erreur", "Aucun paiement valide sélectionné.", "OK");
                return;
            }

            // Passer l'ID de Payment à la vue de sélection de fichiers
            await Navigation.PushAsync(new FileSelectionView(Payment.Id));
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erreur dans OnPaymentButtonClicked : {ex.Message}");
            await DisplayAlert("Erreur", $"Une erreur s'est produite : {ex.Message}", "OK");
        }
    }*/
}