using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MVCUsuario;
using MVCUsuario.Controllers;
using MVCUsuario.Models;

namespace MVCUsuario.Tests.Controllers
{
    [TestClass]
    public class UsuarioControllerTest
    {
        [TestMethod]
        public void Index()
        {
            // Arrange
            UsuarioController controller = new UsuarioController();

            // Act
            var actionResultTask = controller.Index();
            actionResultTask.Wait();
            var viewResult = actionResultTask.Result as ViewResult;

            // Assert
            Assert.IsNotNull(viewResult);
        }


        [TestMethod]
        public void Agregar()
        {
            // Arrange
            UsuarioController controller = new UsuarioController();
            var usuario = new Usuario() { Nombre = "pepito", Direccion = "avenida",FechaNacimiento = DateTime.Now, IdTipoDocumento = 1, NumeroDocumento="56577",
                        IdPais=2,Departamento="deptPrueba",Ciudad="CiduPru" };
            // Act
            var data = controller.Crear(usuario);

            // Assert 
            Assert.IsNotNull(data);
        }


    }
}
