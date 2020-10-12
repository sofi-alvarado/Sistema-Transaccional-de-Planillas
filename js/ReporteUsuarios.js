//Obtenemos las variables de los controles ASP.Net
ddlFiltroP = document.getElementById(ddlFiltro);

//Evento click para btnBuscar
$(document).on('click', '#btnBuscar', function (e) {
    if ($('#rdbEstado').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Estado de Usuario");
            ddlFiltroP.focus();
        }
        else {
            //Aquí poner búsqeda
        }
    }
    else if ($('#rdbTipo').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Tipo de Usuario");
            ddlFiltroP.focus();
        }
        else {
            alertify.success("Funciona");
            //Aquí poner búsqueda
        }
    }
    else {
        alertify.error("Debes seleccionar un filtro");
    }

});

//Evento click para btnLimpiar
$(document).on('click', '#btnLimpiar', function (e) {
    e.preventDefault();

    //Deshabilitamos los demás filtros
    ddlFiltroP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Quitamos la selección a los "radio button" de filtros
    $('#rdbEstado').attr("class", "fa fa-circle");
    $("#rdbEstado").css("color", "inherit");

    $('#rdbTipo').attr("class", "fa fa-circle");
    $("#rdbTipo").css("color", "inherit");

    //Resetear DataGrid y colocar datos sin filtros
});

//Evento click para rdbEstadoA
$(document).on('click', '#rdbEstadoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbEstado').attr("class", "fa fa-check-circle");
    $("#rdbEstado").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbTipo').attr("class", "fa fa-circle");
    $("#rdbTipo").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});

//Evento click para rdbTipoA
$(document).on('click', '#rdbTipoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbTipo').attr("class", "fa fa-check-circle");
    $("#rdbTipo").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEstado').attr("class", "fa fa-circle");
    $("#rdbEstado").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});