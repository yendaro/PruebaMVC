using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCUsuario.Models.ViewModels
{
    public class UsuarioViewModel
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public DateTime? FechaNacimiento { get; set; }
        public string NumeroDocumento { get; set; }
        public int IdTipoDocumento { get; set; }
        public int IdPais { get; set; }
        public string Departamento { get; set; }
        public string Ciudad { get; set; }

        public string PaisNombre { get; set; }
        public string TipoDocumentoNombre { get; set; }

    }
}