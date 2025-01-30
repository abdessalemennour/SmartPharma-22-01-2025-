using CommunityToolkit.Maui.Views;

namespace SmartPharma5.View
{
    public partial class CustomPopup : Popup
    {
        public CustomPopup(Dictionary<int, string> documentTypes)
        {
            InitializeComponent();

            // Charger les types de documents dans le Picker
            TypePicker.ItemsSource = documentTypes.Values.ToList();
            DocumentTypes = documentTypes;

            // Optionnellement, sélectionne le premier type par défaut
            TypePicker.SelectedIndex = 0;
        }

        private Dictionary<int, string> DocumentTypes { get; }

        private void OnSaveClicked(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs
            var memo = MemoEntry.Text;
            var description = DescriptionEntry.Text;
            var selectedType = TypePicker.SelectedItem?.ToString();

            if (string.IsNullOrWhiteSpace(selectedType))
            {
                throw new InvalidOperationException("Please select a document type.");
            }

            var selectedTypeId = DocumentTypes.FirstOrDefault(x => x.Value == selectedType).Key;

            Close(new { Memo = memo, Description = description, TypeId = selectedTypeId });
        }

        private void OnCancelClicked(object sender, EventArgs e)
        {
            Close(null);
        }
    }
}
