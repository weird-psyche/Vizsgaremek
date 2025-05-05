using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace cafeum.Modells
{
    [Table("Kontakt")]
    public class Kontaktmodell
    {
        [Key]
        public int Id { get; set; }
        public string TeljesNev { get; set; }
        public string Email { get; set; }
        public string Tema { get; set; }
        public string Uzenet { get; set; }
    }
}
