using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MVCUsuario.Models;
using System.Threading.Tasks;

namespace MVCUsuario.DAL
{
    public class ParametricaDAL
    {

        public async Task<List<Pais>> ConsultarPais()
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                 return await contextoDb.Pais.AsNoTracking().ToListAsync();

            }
        }

        public async Task<List<TipoDocumento>> ConsultarTipoDocumento()
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                return await contextoDb.TipoDocumento.ToListAsync();

            }
        }
    }
}