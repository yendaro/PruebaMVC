using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCUsuario.Models.ViewModels
{
    public class TipoDocumentoViewModel
    {
        public int IdTipoDocumento { get; set; }
        public string TipoDocumento { get; set; }

        public ICollection<TipoDocumento> ListTiposDocumentos { get; set; }
    }
}