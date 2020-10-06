using MVCUsuario.DAL;
using MVCUsuario.Models;
using MVCUsuario.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServicioWCF
{
    public class ServicioWCF : IServicioWCF
    {
        UsuarioDAL usuarioDal = new UsuarioDAL();

        /// <summary>
        /// Consulta todos los usuarios
        /// </summary>
        /// <returns></returns>
        public List<UsuarioViewModel> Consultar()
        {
            var result = usuarioDal.Consultar().ToList();
            return result;
        }

        /// <summary>
        /// Consulta los datos de un usuario específico
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Task<Usuario> Consultar(int id)
        {
            return  usuarioDal.Consultar(id);
        }

        /// <summary>
        /// Crea un usuario
        /// </summary>
        /// <param name="usuarioModelo"></param>
        public void Guardar(Usuario usuarioModelo)
        {
            usuarioDal.Guardar(usuarioModelo);
        }

        /// <summary>
        /// Actualiza un usuario
        /// </summary>
        /// <param name="usuarioModelo"></param>
        public void Modificar(Usuario usuarioModelo)
        {
            usuarioDal.Modificar(usuarioModelo);
        }

        /// <summary>
        /// Elima un usuario
        /// </summary>
        /// <param name="usuarioModelo"></param>
        public void Eliminar(Usuario usuarioModelo)
        {
            usuarioDal.Eliminar(usuarioModelo);
        }

        }
}
