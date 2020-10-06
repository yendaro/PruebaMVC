
$(document).ready(function () {
    CargarDatos();
});

//Carga los datos de los usuarios en la tabla que va dibujando
function CargarDatos() {
    var parametros = 0;
    $.ajax({
        url: "/Usuario/Listar",
        type: "GET",
        contentType: "application/json; charset=utf-8",
        datatype: "json",
        success: function (result) {
            var html = '';
            var long = 0;
            $.each(result, function (i, item) {       
                
                for (var j = 0; j < item.length; j++) {
                    var dateString = item[j].FechaNacimiento.substr(6);
                    var currentTime = new Date(parseInt(dateString));
                    var month = currentTime.getMonth() + 1;
                    var day = currentTime.getDate();
                    var year = currentTime.getFullYear();
                    if (year == 1)
                        var date = ""
                    else
                    var date = day + "/" + month + "/" + year; 
                 html += '<tr>';            
                //html += '<td>' + item[j].IdUsuario + '</td>';
                html += '<td>' + item[j].Nombre + '</td>';
                html += '<td>' + item[j].Direccion + '</td>';
                html += '<td>' + date + '</td>';
                html += '<td>' + item[j].TipoDocumentoNombre + '</td>';
                html += '<td>' + item[j].NumeroDocumento + '</td>';
                html += '<td>' + item[j].PaisNombre + '</td>';
                html += '<td>' + item[j].Departamento + '</td>';
                    html += '<td>' + item[j].Ciudad + '</td>';
                    html += '<td><a href="#" onclick="ConsultarId(' + item[j].IdUsuario + ')">Editar</a> | <a href="#" onclick="Eliminar(' + item[j].IdUsuario + ')">Eliminar</a></td>';
                    html += '</tr>';
                }
                $('.tbody').html(html);
                
                
            });

        },
    });
}



//Inserta registro del usuario
function Crear() {
    var res = validar();
    if (res == false) {
        return false;
    }
    var usuObj = {
        Nombre: $('#Nombre').val(),
        Direccion: $('#Direccion').val(),
        FechaNacimiento: $('#FechaNacimiento').val(),
        IdTipoDocumento: $("#cmbTiposDocumentos option:selected").val(),
        Documento: $('#Documento').val(),
        IdPais: $("#cmbPaises option:selected").val(),
        Departamento: $('#Departamento').val(),
        Ciudad: $('#Ciudad').val(),
    };
    $.ajax({
        url: "/Usuario/Crear",
        data: JSON.stringify(usuObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            alert(result.message);
            CargarDatos();
            $('#myModal').modal('hide');
        },
        error: function (result) {
            alert(result.error);
        }
    });
}



////Obtiene los datos del usuario específico
function ConsultarId(id) {
    clearTextBox();
    $('#Nombre').css('border-color', 'lightgrey');
    $.ajax({
        url: "/Usuario/ConsultarId/" + id,
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        datatype: "json",
        success: function (result) {
            $('#IdUsuario').val(result.IdUsuario);
            $('#Nombre').val(result.Nombre);
            $('#Direccion').val(result.Direccion);
            var dateString = result.FechaNacimiento.substr(6);
            var currentTime = new Date(parseInt(dateString));
            var month = currentTime.getMonth() + 1;
            var day = currentTime.getDate();
            if (day < 10)
                day = '0' + day; //agrega cero si el menor de 10
            if (month < 10)
                month = '0' + month; //agrega cero si el menor de 10
            var year = currentTime.getFullYear();
            if (year == 1)
                var date = "";
            else
                var date = year + "-" + month + "-" + day; 
            var _dat = document.querySelector("#FechaNacimiento1");
            _dat.value = date;
            $('#FechaNacimiento1').val(date);
            $("#cmbTiposDocumentos").val(result.IdTipoDocumento);
            $('#NumeroDocumento').val(result.NumeroDocumento);
            $("#cmbPaises").val(result.IdPais)
            $('#Departamento').val(result.Departamento);           
            $('#Ciudad').val(result.Ciudad);

            $('#myModal').modal('show');
            $('#btnActualizar').show();
            $('#btnCrear').hide();
        },
        error: function (result) {
            alert(result.error);
        }
    });
    return false;
}

//Actualiza los datos del usuario
function Actualizar() {
    var res = validar();
    if (res == false) {
        return false;
    }
    var usuarioObj = {
        IdUsuario: $('#IdUsuario').val(),
        Nombre: $('#Nombre').val(),
        Direccion: $('#Direccion').val(),
        FechaNacimiento: $('#FechaNacimiento1').val(),
        IdTipoDocumento: $("#cmbTiposDocumentos option:selected").val(),
        NumeroDocumento: $('#NumeroDocumento').val(),
        IdPais: $("#cmbPaises option:selected").val(),
        Departamento: $('#Departamento').val(),
        Ciudad: $('#Ciudad').val(),
    };
    $.ajax({
        url: "/Usuario/Actualizar",
        data: JSON.stringify(usuarioObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            alert(result.message);
            CargarDatos();
            $('#myModal').modal('hide');
            clearTextBox();
        },
        error: function (result) {
            alert(result.error);
        }
    });
}

//Elimina el usuario de la bd
function Eliminar(id) {
    var ans = confirm("Está seguro de eliminar este registro?");
    if (ans) {
        $.ajax({
            url: "/Usuario/Eliminar/" + id,
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: "json",
            success: function (result) {
                alert(result.message);
                CargarDatos();
            },
            error: function (result) {
                alert(result.error);
            }
        });
    }
}

//Borra los datos
function clearTextBox() {
    $('#UsuarioId').val("");
    $('#Nombre').val("");
    $('#Direccion').val("");
    $('#FechaNacimiento1').val("");
    $("#cmbTiposDocumentos").val("");
    $('#NumeroDocumento').val("");
    $("#cmbPaises").val("")
    $('#Departamento').val("");
    $('#Ciudad').val("");
    $('#btnActualizar').hide();
    $('#btnCrear').show();
    $('#Nombre').css('border-color', 'lightgrey');

}
//Valdidacion de controles
function validar() {
    var isValid = true;
    if ($('#Nombre').val().trim() == "") {
        $('#Nombre').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Nombre').css('border-color', 'lightgrey');
    }
    if ($('#Direccion').val().trim() == "") {
        $('#Direccion').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Direccion').css('border-color', 'lightgrey');
    }
    if ($('#FechaNacimiento1').val() == "") {
        $('#FechaNacimiento1').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#FechaNacimiento1').css('border-color', 'lightgrey');
    }
    if ($('#NumeroDocumento').val().trim() == "") {
        $('#NumeroDocumento').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NumeroDocumento').css('border-color', 'lightgrey');
    }
    if ($("#cmbTiposDocumentos option:selected").val() == "") {
        $('#cmbTiposDocumentos').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#cmbTiposDocumentos').css('border-color', 'lightgrey');
    }
    if ($("#cmbPaises option:selected").val() == "") {
        $('#cmbPaises').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#cmbPaises').css('border-color', 'lightgrey');
    }

    
   
    return isValid;
}
    

