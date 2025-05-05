using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace cafeum.Modells
{
    [Table("rendelesek")]
    public class Rendelesekmodell
    {
        [Key]
        public int index { get; set; }
        public int termekId { get; set; }
        public int vasarloId { get; set; }
        public int rendelesszam { get; set; }
        //public int mennyiseg {  get; set; }
        //public int meret { get; set; }

        // Kapcsolas mas tablakhoz
        [ForeignKey("termekId")]
        public Termekmodell termekek {  get; set; }

        [ForeignKey("vasarloId")]
        public Vasarlokmodell vasarlok { get; set; }
    }
}
