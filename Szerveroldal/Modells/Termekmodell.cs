using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace cafeum.Modells
{
    [Table("termek")]
    public class Termekmodell
    {
        [Key]
        public int termekId { get; set; }
        public string termekNev { get; set; }
        //public int termekMeret { get; set; }
        public int termekAr {  get; set; }

        public ICollection<Rendelesekmodell> termekek {  get; set; }
    }
}
