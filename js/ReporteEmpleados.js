//Obtenemos las variables de los controles ASP.Net
ddlFiltroP = document.getElementById(ddlFiltro);

//Evento click para btnBuscar
$(document).on('click', '#btnBuscar', function (e) {
    if ($('#rdbEContrato').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Estado de Contrato");
            ddlFiltroP.focus();
        }
        else {
            //Aquí poner búsqeda
        }
    }
    else if ($('#rdbDepartamento').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Departamento");
            ddlFiltroP.focus();
        }
        else {
            alertify.success("Funciona");
            //Aquí poner búsqueda
        }
    }
    else if ($('#rdbMunicipio').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Municipio");
            ddlFiltroP.focus();
        }
        else {
            alertify.success("Funciona");
            //Aquí poner búsqueda
        }
    }
    else if ($('#rdbNvlEduc').attr('class') === "fa fa-check-circle") {
        if (ddlFiltroP.value === "0") {
            alertify.error("Debes seleccionar un Nivel Educativo");
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
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbDepartamento').attr("class", "fa fa-circle");
    $("#rdbDepartamento").css("color", "inherit");

    $('#rdbMunicipio').attr("class", "fa fa-circle");
    $("#rdbMunicipio").css("color", "inherit");

    $('#rdbNvlEduc').attr("class", "fa fa-circle");
    $("#rdbNvlEduc").css("color", "inherit");

    //Resetear DataGrid y colocar datos sin filtros
});

//Evento click para rdbEContratoA
$(document).on('click', '#rdbEContratoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbEContrato').attr("class", "fa fa-check-circle");
    $("#rdbEContrato").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbDepartamento').attr("class", "fa fa-circle");
    $("#rdbDepartamento").css("color", "inherit");

    $('#rdbMunicipio').attr("class", "fa fa-circle");
    $("#rdbMunicipio").css("color", "inherit");

    $('#rdbNvlEduc').attr("class", "fa fa-circle");
    $("#rdbNvlEduc").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});

//Evento click para rdbDepartamentoA
$(document).on('click', '#rdbDepartamentoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbDepartamento').attr("class", "fa fa-check-circle");
    $("#rdbDepartamento").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbMunicipio').attr("class", "fa fa-circle");
    $("#rdbMunicipio").css("color", "inherit");

    $('#rdbNvlEduc').attr("class", "fa fa-circle");
    $("#rdbNvlEduc").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});

//Evento click para rdbMunicipioA
$(document).on('click', '#rdbMunicipioA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbMunicipio').attr("class", "fa fa-check-circle");
    $("#rdbMunicipio").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbDepartamento').attr("class", "fa fa-circle");
    $("#rdbDepartamento").css("color", "inherit");

    $('#rdbNvlEduc').attr("class", "fa fa-circle");
    $("#rdbNvlEduc").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});

//Evento click para rdbNvlEducA
$(document).on('click', '#rdbNvlEducA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlFiltroP.removeAttribute("disabled");
    ddlFiltroP.focus();

    //Reseteamos los valores de los demás filtros
    ddlFiltroP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbNvlEduc').attr("class", "fa fa-check-circle");
    $("#rdbNvlEduc").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbDepartamento').attr("class", "fa fa-circle");
    $("#rdbDepartamento").css("color", "inherit");

    $('#rdbMunicipio').attr("class", "fa fa-circle");
    $("#rdbMunicipio").css("color", "inherit");

    //Llenar ddlFiltro con los items correspondientes según el filtro seleccionado
});