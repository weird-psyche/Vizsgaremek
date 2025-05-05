using cafeum.Modells;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Text.Json;

namespace cafeum.Controllers
{
    [ApiController]
    public class CafeumController : ControllerBase
    {
        private readonly AppContext appContext;
        public CafeumController(AppContext appContext)
        {
            this.appContext = appContext;
        }


        [HttpGet("/api/cafeum/termek")]
        public IActionResult GetTermekek()
        {
            var data = appContext.Set<Termekmodell>()
                .Select(i => new
                {
                    i.termekId,
                    i.termekNev,
                    //i.termekMeret,
                    i.termekAr
                })
                .ToList();
            return Ok(data);
        }

        [HttpGet("/api/cafeum/rendelesek")]
        public IActionResult GetRendelesek()
        {
            var data = appContext.Set<Rendelesekmodell>()
                .Select(i => new
                {
                    i.index,
                    i.termekId,
                    i.vasarloId,
                    //i.mennyiseg,
                    i.rendelesszam,
                })
                .ToList();
            return Ok(data);
        }

        [HttpPost("/api/cafeum/rendelesek")]
        public IActionResult Rendeles(dynamic ujadatok)
        {
            try
            {
                var modelList = JsonSerializer.Deserialize<List<Rendelesekmodell>>(
                ujadatok.ToString(),
                new JsonSerializerOptions() { PropertyNameCaseInsensitive = true });

                foreach (var model in modelList)
                {
                    appContext.Set<Rendelesekmodell>().Add(model);
                }
                appContext.SaveChanges();
                return StatusCode(200, new
                {
                    message = "Sikeres rogzites"
                });
            }
            catch
            {
                return BadRequest("Hiányos vagy érvénytelen!");
            }
        }
        

        [HttpGet("/api/cafeum/vasarlok")]
        public IActionResult GetVasarlok()
        {
            var data = appContext.Set<Vasarlokmodell>()
                .Select(i => new
                {
                    i.vasarloId,
                    i.vasarloNev,
                    i.vasarloMail,
                    i.vasarloJelszo,
                    i.vasarloCim
                })
                .ToList();
            return Ok(data);
        }
        
        [HttpPost("/api/cafeum/vasarlok")]
        public IActionResult PostVasarlok(dynamic ujadatok)
        {
            try
            {
                var model = JsonSerializer.Deserialize<Vasarlokmodell>(

                ujadatok.ToString(),

                new JsonSerializerOptions() { PropertyNameCaseInsensitive = true });

                appContext.Set<Vasarlokmodell>().Add(model);
                appContext.SaveChanges();
                return StatusCode(200);
            }
            catch
            {
                return BadRequest("Hiányos vagy érvénytelen!");
            }
        }
        
        [HttpGet("/api/cafeum/kontakt")]
        public IActionResult GetKontakt()
        {
            var data = appContext.Set<Kontaktmodell>()
                .Select(i => new
                {
                    i.Id,
                    i.TeljesNev,
                    i.Email,
                    i.Tema,
                    i.Uzenet
                })
                .ToList();
            return Ok(data);
        }

        [HttpPost("/api/cafeum/kontakt")]
        public IActionResult PostKontakt(dynamic ujadatok)
        {
            try
            {
                var model = JsonSerializer.Deserialize<Kontaktmodell>(

                ujadatok.ToString(),

                new JsonSerializerOptions() { PropertyNameCaseInsensitive = true });

                appContext.Set<Kontaktmodell>().Add(model);
                appContext.SaveChanges();
                return StatusCode(200);
            }
            catch
            {
                return BadRequest("Hiányos vagy érvénytelen!");
            }
            
        }
    }
}
