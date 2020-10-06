using MVCUsuario.Models;
using MVCUsuario.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace MVCUsuario.DAL
{
    public class UsuarioDAL
    {
   
        public List<UsuarioViewModel> Consultar()
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                var pais =  contextoDb.Pais.AsNoTracking().ToList();
                var tipoDocumento =  contextoDb.TipoDocumento.AsNoTracking().ToList();
                var usuario=  contextoDb.Usuario.AsNoTracking().ToList();

                var query = from u in usuario
                            join p in pais on u.IdPais equals p.IdPais
                            join t in tipoDocumento on u.IdTipoDocumento equals t.IdTipoDocumento
                            select new UsuarioViewModel()
                            {
                                IdUsuario = u.IdUsuario,
                                Nombre = u.Nombre,
                                Direccion = u.Direccion,
                                FechaNacimiento = Convert.ToDateTime(u.FechaNacimiento),
                                IdTipoDocumento = u.IdTipoDocumento,
                                TipoDocumentoNombre = t.TipoDocumento1,
                                NumeroDocumento = u.NumeroDocumento,
                                IdPais= u.IdPais,
                                PaisNombre = p.Pais1,
                                Departamento = u.Departamento,
                                Ciudad = u.Ciudad
                            };

                return query.ToList();

            }
        }

        public async Task<Usuario> Consultar(int id)
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                 return await contextoDb.Usuario.AsNoTracking().FirstOrDefaultAsync(c=>c.IdUsuario==id);
            }
        }

        public void Guardar(Usuario usuarioModelo)
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                contextoDb.Usuario.Add(usuarioModelo);
                contextoDb.SaveChanges();
            }
        }

        public void Modificar(Usuario usuarioModelo)
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                contextoDb.Entry(usuarioModelo).State = EntityState.Modified;
                contextoDb.SaveChanges();
            }
        }

        public void Eliminar(Usuario usuarioModelo)
        {
            using (DBEntities contextoDb = new DBEntities())
            {
                contextoDb.Entry(usuarioModelo).State = EntityState.Deleted;
                contextoDb.SaveChanges();
            }
        }

    }
}