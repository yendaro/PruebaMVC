using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using MVCUsuario.Models.ViewModels;
using MVCUsuario.Models;

namespace ServicioWCF
{
    [ServiceContract]
    interface IServicioWCF
    {
        [OperationContract]
        List<UsuarioViewModel> Consultar();
        Task<Usuario> Consultar(int id);
        void Guardar(Usuario usuarioModelo);
        void Modificar(Usuario usuarioModelo);
        void Eliminar(Usuario usuarioModelo);

    }
}
