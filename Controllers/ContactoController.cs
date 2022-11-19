using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProyectoCRUD.Data;
using ProyectoCRUD.Data.Models;

namespace ProyectoCRUD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContactoController : ControllerBase
    {
        private readonly DBPRUEBASContext _dbContext;

        public ContactoController(DBPRUEBASContext context)
        {
            _dbContext = context;
        }

        // READ
        [HttpGet]
        [Route("Lista")]
        public async Task<IActionResult> Lista()
        {
            List<Contacto> lista = await _dbContext.Contactos.OrderByDescending(c => c.IdContacto).ToListAsync();
            return StatusCode(StatusCodes.Status200OK, lista);
        }

        // CREATE
        [HttpPost]
        [Route("Guardar")]
        public async Task<IActionResult> Guardar([FromBody] Contacto request)
        {
            await _dbContext.Contactos.AddAsync(request);
            await _dbContext.SaveChangesAsync();

            return StatusCode(StatusCodes.Status200OK, "ok");
        }

        // UPDATE
        [HttpPut]
        [Route("Editar")]
        public async Task<IActionResult> Editar([FromBody] Contacto request)
        {
            _dbContext.Contactos.Update(request);
            await _dbContext.SaveChangesAsync();

            return StatusCode(StatusCodes.Status200OK, "ok");
        }

        // DELETE
        [HttpDelete]
        [Route("Eliminar/{id:int}")]
        public async Task<IActionResult> Eliminar(int id)
        {
            Contacto contacto = _dbContext.Contactos.Find(id);
            _dbContext.Contactos.Remove(contacto);
            await _dbContext.SaveChangesAsync();

            return StatusCode(StatusCodes.Status200OK, "ok");
        }

    }
}
