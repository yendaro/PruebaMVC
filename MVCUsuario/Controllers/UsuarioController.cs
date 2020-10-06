using MVCUsuario.DAL;
using MVCUsuario.Models;
using MVCUsuario.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace MVCUsuario.Controllers
{
    public class UsuarioController : Controller
    {
        UsuarioDAL usuarioDal = new UsuarioDAL();
        private List<SelectListItem> tipoDocItems;
        private List<SelectListItem> paistems;

        // GET: Usuario
        public async Task<ActionResult> Index()
        {
            var listTipoDocumento = await new ParametricaDAL().ConsultarTipoDocumento();
            tipoDocItems = new List<SelectListItem>();
            foreach (var item in listTipoDocumento)
            {
                tipoDocItems.Add(new SelectListItem
                {
                    Text = item.TipoDocumento1,
                    Value = item.IdTipoDocumento.ToString()
                });
            }
            ViewBag.TiposList = tipoDocItems;

            var listPais = await new ParametricaDAL().ConsultarPais();
            paistems = new List<SelectListItem>();
            foreach (var item in listPais)
            {
                paistems.Add(new SelectListItem
                {
                    Text = item.Pais1,
                    Value = item.IdPais.ToString()
                });
            }
            ViewBag.PaisList = paistems;

            return View();
        }


        /// <summary>
        /// Consulta todos los usuarios
        /// </summary>
        /// <returns></returns>
        public JsonResult Listar()
        {
            var result = usuarioDal.Consultar().ToList();
            return Json(new { data = result }, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// Insertar registro
        /// </summary>
        /// <param name="usuarioModel"></param>
        /// <returns></returns>
        public JsonResult Crear(Usuario usuarioModel)
        {
            try
            {
                usuarioDal.Guardar(usuarioModel);
                return Json(new { success = true, message = "Guardado Exitoso", JsonRequestBehavior.AllowGet });
            }
              catch (Exception ex)
            {
                return Json(String.Format("'success':'false','error': " + ex + " "));
            }
        }
        
        /// <summary>
        /// Consulta Usuario Especifico
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult ConsultarId(int id)
        {
            try
            {
                var usuarioModel = usuarioDal.Consultar(id);
                return Json(usuarioModel, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(String.Format("'success':'false','error': " + ex + " "));
            }
        }

       /// <summary>
       /// Actualiza la información del usuario
       /// </summary>
       /// <param name="usuarioModel"></param>
       /// <returns></returns>
        public JsonResult Actualizar(Usuario usuarioModel)
        {
            try
            {
                usuarioDal.Modificar(usuarioModel);
                 return Json(new { success = true, message = "Actalización Exitosa", JsonRequestBehavior.AllowGet });
            }
            catch (Exception ex)
            {
                return Json(String.Format("'success':'false','error': " + ex + " "));
            }
        }
        
        /// <summary>
        /// Eliminar el usuario de la bd
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<JsonResult> Eliminar(int id)
        {
            try
            {
                Usuario usuarioModel = await usuarioDal.Consultar(id);
                usuarioDal.Eliminar(usuarioModel);
                return Json(new { success = true, message = "Eliminación Exitosa", JsonRequestBehavior.AllowGet });
            }
            catch (Exception ex)
            {
                return Json(String.Format("'success':'false','error': " + ex + " "));
            }
        }


    }
}