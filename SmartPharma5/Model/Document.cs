using MvvmHelpers.Commands;
using MySqlConnector;
using System.ComponentModel;
using SmartPharma5.View;

namespace SmartPharma5.Model
{
    public class Document
    {
        #region Attributs
        public int Id { get; set; }
        public string name { get; set; }
        public DateTime create_date { get; set; }
        public string memo { get; set; }
        public string description { get; set; }
        public DateTime? date { get; set; }
        public DateTime? date_validity { get; set; }
        public string extension { get; set; }
        public uint? type_document { get; set; }
        public byte[] content { get; set; }
        // bool check => content != null && size > 0;
        public bool check => content != null && content.Length > 0;
        public long size => content?.LongLength ?? 0;
        public int? piece { get; set; }
        public string piece_type { get; set; }
        public string label { get; set; }
        public DateTime? return_date { get; set; }
        #endregion

        #region Constructeurs
        public Document()
        {
            create_date = DateTime.Now;
            content = Array.Empty<byte>();
        }

        public Document(int? piece, string piece_type, string label) : this()
        {
            this.piece = piece;
            this.piece_type = piece_type;
            this.label = label;
        }

        public Document(int id, string name, DateTime create_date, string memo, string description, DateTime? date,
            DateTime? date_validity, string extension, uint? type_document, byte[] content, int? piece,
            string piece_type, DateTime? return_date)
        {
            Id = id;
            this.name = name;
            this.create_date = create_date;
            this.memo = memo;
            this.description = description;
            this.date = date;
            this.date_validity = date_validity;
            this.extension = extension;
            this.type_document = type_document;
            this.content = content;
            this.piece = piece;
            this.piece_type = piece_type;
            this.return_date = return_date;
        }
        #endregion

        #region Méthodes
        /*  public void Display()
          {
              if (content == null || content.Length == 0 || string.IsNullOrWhiteSpace(extension))
                  throw new InvalidOperationException("Le document est vide ou invalide.");

              string tempPath = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString() + extension);
              File.WriteAllBytes(tempPath, content);
              Process.Start(new ProcessStartInfo
              {
                  FileName = tempPath,
                  UseShellExecute = true
              });
          }
        */

        /**********************************add documnets**********************************/
        public async static Task<bool> SaveToDatabase(Document document)
        {
            if (document == null)
                throw new ArgumentNullException(nameof(document));

            if (document.content == null || document.content.Length == 0 || string.IsNullOrWhiteSpace(document.extension))
                throw new InvalidOperationException("Le document est vide ou invalide.");

            const string sqlCmd = @" INSERT INTO atooerp_document 
            (name, create_date, memo, description, date, date_validity, extension, type_document, content, piece, piece_type, return_date,size,`check`) 
            VALUES 
            (@Name, @CreateDate, @Memo, @Description, @Date, @DateValidity, @Extension, @TypeDocument, @Content, @Piece, @PieceType, @ReturnDate, @Size,@Check);";

            // Connexion à la base de données
            DbConnection.Deconnecter();
            if (DbConnection.Connecter())
            {
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(sqlCmd, DbConnection.con))
                    {
                        // Ajouter les paramètres
                        cmd.Parameters.AddWithValue("@Name", document.name ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@CreateDate", document.create_date);
                        cmd.Parameters.AddWithValue("@Memo", document.memo ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Description", document.description ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Date", document.date ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@DateValidity", document.date_validity ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Extension", document.extension ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@TypeDocument", document.type_document ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Content", document.content ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Piece", document.piece ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@PieceType", document.piece_type ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@ReturnDate", document.return_date ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Size", document.size);
                        cmd.Parameters.AddWithValue("@Check", document.check);
                        // Exécuter la commande
                        int rowsAffected = await cmd.ExecuteNonQueryAsync();

                        // Déconnexion de la base de données
                        DbConnection.Deconnecter();

                        return rowsAffected > 0;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Erreur lors de l'enregistrement du document : {ex.Message}");
                    DbConnection.Deconnecter();
                    return false;
                }
            }
            else
            {
                Console.WriteLine("Échec de la connexion à la base de données.");
                return false;
            }
        }

        /**********************type_document*******************************/
        public static async Task<Dictionary<int, string>> GetDocumentTypesAsync()
        {
            const string query = "SELECT id, name FROM atooerp_type_document";

            try
            {
                var documentTypes = new Dictionary<int, string>();

                // Connexion à la base de données
                DbConnection.Deconnecter();
                if (DbConnection.Connecter())
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, DbConnection.con))
                    {
                        using (var reader = await cmd.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                int id = reader.GetInt32("id");
                                string name = reader.GetString("name");
                                documentTypes.Add(id, name);
                            }
                        }
                    }
                }
                DbConnection.Deconnecter();
                return documentTypes;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur lors de la récupération des types de documents : {ex.Message}");
                return null;
            }
        }
        /***************************************************/

        public string GetTempPath()
        {
            if (content == null || content.Length == 0 || string.IsNullOrWhiteSpace(extension))
                throw new InvalidOperationException("Le document est vide ou invalide.");

            string tempPath = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString() + extension);
            File.WriteAllBytes(tempPath, content);
            return tempPath;
        }

        public static BindingList<string> GetFileList(string path, BindingList<string> fileList)
        {
            foreach (var file in Directory.GetFiles(path))
                fileList.Add(file);

            foreach (var subdirectory in Directory.GetDirectories(path))
                GetFileList(subdirectory, fileList);

            return fileList;
        }

        public string GetInsertTitle() => "Ajouter un nouveau document";
        public string GetUpdateTitle() => $"Nom de document [{name}]";
        public string GetListeTitle() => "Liste des documents";
        #endregion
    }
}
