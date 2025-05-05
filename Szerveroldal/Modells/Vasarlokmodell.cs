using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace cafeum.Modells
{
    [Table("vasarlok")]
    public class Vasarlokmodell
    {
        [Key]
        public int vasarloId { get; set; }
        //public string vasarloNev { get; set; }
        //public bool vasarloTipus { get; set; }
        
        public string vasarloNev { get; set; }
        public string vasarloMail { get; set; }
        public string vasarloJelszo { get; set; }
        public string vasarloCim { get; set; }

        public ICollection<Rendelesekmodell> vasarlok {  get; set; }

    }
}
