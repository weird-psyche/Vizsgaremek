using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace cafeum.Migrations
{
    public partial class May2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "mennyiseg",
                table: "rendelesek");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "mennyiseg",
                table: "rendelesek",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
