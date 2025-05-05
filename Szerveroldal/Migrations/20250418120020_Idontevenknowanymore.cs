using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace cafeum.Migrations
{
    public partial class Idontevenknowanymore : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "termekMeret",
                table: "termek");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "termekMeret",
                table: "termek",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
