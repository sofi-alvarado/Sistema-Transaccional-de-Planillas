function templateRow() {
    var template = "<tr>";
    template += ("<td>" + "123" + "</td>");
    template += ("<td>" + "Jorge Junior" + "</td>");
    template += ("<td>" + "Rodriguez Castillo" + "</td>");
    template += ("<td>" + "123" + "</td>");
    template += ("<td>" + "123" + "</td>");
    template += ("<td>" + "123" + "</td>");
    template += ("<td>" + "123" + "</td>");
    template += "</tr>";
    return template;
}

function addRow() {
    var template = templateRow();
    for (var i = 0; i < 10; i++) {
        $("#tbl_body_table").append(template);
    }
}

var tabla, data;

function addRowDT(data) {
    tabla = $("#tbl_usuarios").DataTable({
        "aaSorting": [[0, 'desc']],
        "bSort": true,
        "bDestroy": true,
        "aoColumns": [
            null,
            null,
            null,
            null,
            null,
            null,
            { "bSortable": false }
        ]
    });

    tabla.fnClearTable();

    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].IdPaciente,
            data[i].Nombres,
            (data[i].ApPaterno + " " + data[i].ApMaterno),
            ((data[i].Sexo == 'M') ? "Masculino" : "Femenino"),
            data[i].Edad,
            data[i].Direccion,
            '<button type="button" value="Actualizar" title="Actualizar" class="btn btn-primary btn-edit" data-target="#imodal" data-toggle="modal"><i class="fa fa-edit" aria-hidden="true"></i></button>&nbsp;' +
            '<button type="button" value="Eliminar" title="Eliminar" class="btn btn-danger btn-delete"><i class="fa fa-minus-square-o" aria-hidden="true"></i></button>'

        ]);
    }
    //  ((data[i].Estado == true) ? "Activo" : "Inactivo")
}

function sendDataAjax() {
    $.ajax({
        type: "POST",
        url: "GestionarPaciente.aspx/ListarPacientes",
        data: {},
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            addRowDT(data.d);
        }
    });
}

function updateDataAjax() {

    var obj = JSON.stringify({ id: JSON.stringify(data[0]), direccion: $("#txtModalDireccion").val() });

    $.ajax({
        type: "POST",
        url: "GestionarPaciente.aspx/ActualizarDatosPaciente",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                alert("Registro actualizado de manera correcta.");
            } else {
                alert("No se pudo actualizar el registro.");
            }
        }
    });
}

function deleteDataAjax(data) {

    var obj = JSON.stringify({ id: JSON.stringify(data) });

    $.ajax({
        type: "POST",
        url: "GestionarPaciente.aspx/EliminarDatosPaciente",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                alert("Registro eliminado de manera correcta.");
            } else {
                alert("No se pudo eliminar el registro.");
            }
        }
    });
}

// evento click para boton actualizar
$(document).on('click', '.btn-edit', function (e) {
    e.preventDefault();

    var row = $(this).parent().parent()[0];
    data = tabla.fillModalData(row);
    fillModalData();

});

// evento click para boton eliminar
$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();

    //primer método: eliminar la fila del datatble
    var row = $(this).parent().parent()[0];
    var dataRow = tabla.fnGetData(row);

    //segundo método: enviar el codigo del paciente al servidor y eliminarlo, renderizar el datatable
    // paso 1: enviar el id al servidor por medio de ajax
    deleteDataAjax(dataRow[0]);
    // paso 2: renderizar el datatable
    sendDataAjax();

});


// cargar datos en el modal
function fillModalData() {
    $("#txtFullName").val(data[1] + " " + data[2]);
    $("#txtModalDireccion").val(data[5]);
}

// enviar la informacion al servidor
$("#btnactualizar").click(function (e) {
    e.preventDefault();
    updateDataAjax();
});

// Llamando a la funcion de ajax al cargar el documento
sendDataAjax();


//Obtenemos las variables de los controles ASP.Net
var txtUsuarioP = document.getElementById(txtUsuario);
var ddlTipoP = document.getElementById(ddlTipo);
var ddlEstadoP = document.getElementById(ddlEstado);

//Evento click para btnBuscar
$(document).on('click', '#btnBuscar', function (e) {
    e.preventDefault();

    if ($('#rdbUsuario').attr("class") === "fa fa-check-circle")
    {
        if (txtUsuarioP.value === "" && $('#rdbUsuario').attr("class") === "fa fa-check-circle") {
            alertify.error("Debes ingresar un Usuario a buscar");
        }
        else{
            //Aquí poner busqueda
        }
        
    }
    else if ($('#rdbTipo').attr("class") === "fa fa-check-circle"){
        if (ddlTipoP.value === "0" && $('#rdbTipo').attr("class") === "fa fa-check-circle") {
            alertify.error("Debes seleccionar un Tipo de Usuario");
        }
        else {
            //Aquí poner busqueda
        }
    }
    else if ($('#rdbEstado').attr("class") === "fa fa-check-circle") {
        if (ddlEstadoP.value === "0" && $('#rdbEstado').attr("class") === "fa fa-check-circle") {
            alertify.error("Debes seleccionar un Estado de Usuario");
        }
        else {
            //Aquí poner busqueda
        }
    }
    else
    {
        alertify.error("Debes escoger un filtro");
    }

    /*Ejemplos:*/
    //alertify.alert("Funciona").setHeader('<h4><label class="text-primary"> Ferramina </label></h4> ');
    //alertify.success("No funciona")
    //alertify.error("No funciona")
    // paso 2: renderizar el datatable
    //sendDataAjax();
});

//Evento click para btnLimpiar
$(document).on('click', '#btnLimpiar', function (e) {
    e.preventDefault();

    //Deshabilitamos los demás filtros
    txtUsuarioP.setAttribute("disabled", "true");
    ddlTipoP.setAttribute("disabled", "true");
    ddlEstadoP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    txtUsuarioP.value = "";
    ddlTipoP.value = "0";
    ddlEstadoP.value = "0";

    //Quitamos la selección a los "radio button" de filtros
    $('#rdbUsuario').attr("class", "fa fa-circle");
    $("#rdbUsuario").css("color", "inherit");

    $('#rdbTipo').attr("class", "fa fa-circle");
    $("#rdbTipo").css("color", "inherit");

    $('#rdbEstado').attr("class", "fa fa-circle");
    $("#rdbEstado").css("color", "inherit");

    //Resetear DataGrid y colocar datos sin filtros
});

//Evento click para rdbUsuarioA
$(document).on('click', '#rdbUsuarioA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    txtUsuarioP.removeAttribute("disabled");
    txtUsuarioP.focus();

    //Deshabilitamos los demás filtros
    ddlTipoP.setAttribute("disabled", "true");
    ddlEstadoP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlTipoP.value = "0";
    ddlEstadoP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbUsuario').attr("class", "fa fa-check-circle");
    $("#rdbUsuario").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbTipo').attr("class", "fa fa-circle");
    $("#rdbTipo").css("color", "inherit");

    $('#rdbEstado').attr("class", "fa fa-circle");
    $("#rdbEstado").css("color", "inherit");
});

//Evento click para rdbTipoA
$(document).on('click', '#rdbTipoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlTipoP.removeAttribute("disabled");
    ddlTipoP.focus();

    //Deshabilitamos los demás filtros
    txtUsuarioP.setAttribute("disabled", "true");
    ddlEstadoP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    txtUsuarioP.value = "";
    ddlEstadoP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbTipo').attr("class", "fa fa-check-circle");
    $("#rdbTipo").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbUsuario').attr("class", "fa fa-circle");
    $("#rdbUsuario").css("color", "inherit");

    $('#rdbEstado').attr("class", "fa fa-circle");
    $("#rdbEstado").css("color", "inherit");
});

//Evento click para rdbEstadoA
$(document).on('click', '#rdbEstadoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlEstadoP.removeAttribute("disabled");
    ddlEstadoP.focus();

    //Deshabilitamos los demás filtros
    txtUsuarioP.setAttribute("disabled", "true");
    ddlTipoP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    txtUsuarioP.value = "";
    ddlTipoP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbEstado').attr("class", "fa fa-check-circle");
    $("#rdbEstado").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbUsuario').attr("class", "fa fa-circle");
    $("#rdbUsuario").css("color", "inherit");

    $('#rdbTipo').attr("class", "fa fa-circle");
    $("#rdbTipo").css("color", "inherit");
});