using cafeum.Modells;
using Microsoft.EntityFrameworkCore;

namespace cafeum
{
    public class AppContext : DbContext
    {
        public DbSet<Rendelesekmodell> Rendelesek {  get; set; }
        public DbSet<Termekmodell> Termekek { get; set; }
        public DbSet<Vasarlokmodell> Vasarlok { get; set; }

        public DbSet<Kontaktmodell> Kontakt { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseMySQL("server=localhost;database=cafeum;uid=root;pwd=;charset=utf8");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Rendelesekmodell>()
                .HasOne(k => k.termekek)
                .WithMany(p => p.termekek)
                .HasForeignKey(k => k.termekId);
            modelBuilder.Entity<Rendelesekmodell>()
                .HasOne(k => k.vasarlok)
                .WithMany(p => p.vasarlok)
                .HasForeignKey(k => k.vasarloId);

        }
    }
}
