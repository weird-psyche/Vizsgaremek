using Microsoft.EntityFrameworkCore.Migrations;
using MySql.EntityFrameworkCore.Metadata;

#nullable disable

namespace cafeum.Migrations
{
    public partial class CimzesTorles : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "termek",
                columns: table => new
                {
                    termekId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    termekNev = table.Column<string>(type: "longtext", nullable: false),
                    termekMeret = table.Column<int>(type: "int", nullable: false),
                    termekAr = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_termek", x => x.termekId);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "vasarlok",
                columns: table => new
                {
                    vasarloId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    vasarloNev = table.Column<string>(type: "longtext", nullable: false),
                    vasarloMail = table.Column<string>(type: "longtext", nullable: false),
                    vasarloJelszo = table.Column<string>(type: "longtext", nullable: false),
                    vasarloCim = table.Column<string>(type: "longtext", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_vasarlok", x => x.vasarloId);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "rendelesek",
                columns: table => new
                {
                    index = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    termekId = table.Column<int>(type: "int", nullable: false),
                    vasarloId = table.Column<int>(type: "int", nullable: false),
                    rendelesszam = table.Column<int>(type: "int", nullable: false),
                    mennyiseg = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_rendelesek", x => x.index);
                    table.ForeignKey(
                        name: "FK_rendelesek_termek_termekId",
                        column: x => x.termekId,
                        principalTable: "termek",
                        principalColumn: "termekId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_rendelesek_vasarlok_vasarloId",
                        column: x => x.vasarloId,
                        principalTable: "vasarlok",
                        principalColumn: "vasarloId",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_rendelesek_termekId",
                table: "rendelesek",
                column: "termekId");

            migrationBuilder.CreateIndex(
                name: "IX_rendelesek_vasarloId",
                table: "rendelesek",
                column: "vasarloId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "rendelesek");

            migrationBuilder.DropTable(
                name: "termek");

            migrationBuilder.DropTable(
                name: "vasarlok");
        }
    }
}
