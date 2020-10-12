//Obtenemos las variables de los controles ASP.Net
ddlAreaP = document.getElementById(ddlArea);
ddlEContratoP = document.getElementById(ddlEContrato);
txtFechaIP = document.getElementById(txtFechaI);
txtFechaFP = document.getElementById(txtFechaF);

//Evento click para btnBuscar
$(document).on('click', '#btnBuscar', function (e) {
    if ($('#rdbArea').attr('class') === "fa fa-check-circle") {
        if (ddlAreaP.value === "0") {
            alertify.error("Debes seleccionar un Área");
            ddlAreaP.focus();
        }
        else {
            //Aquí poner búsqeda
        }
    }
    else if ($('#rdbAreaFechas').attr('class') === "fa fa-check-circle") {
        if (ddlAreaP.value === "0") {
            alertify.error("Debes seleccionar un Área");
            ddlAreaP.focus();
        }
        else if (txtFechaIP.value === "" || txtFechaFP.value === "") {
            alertify.error("Debes ingresar Fecha inicio y Fecha final");
            txtFechaIP.focus();
        }
        else {
            //Validamos que la Fecha final sea posterior a la Fecha inicial
            if (!fechaCorrecta(txtFechaIP.value, txtFechaFP.value)) {
                alertify.error("La Fecha final no puede ser anterior a la Fecha inicial");
                txtFechaIP.focus();
            }
            else {
                alertify.success("Funciona");
                //Aquí poner búsqueda
            }
        }
    }
    else if ($('#rdbEContrato').attr('class') === "fa fa-check-circle") {
        if (ddlEContratoP.value === "0") {
            alertify.error("Debes ingresar un Estado de Contrato");
            ddlEContratoP.focus();
        }
        else {
            //Aquí poner búsqueda
        }
    }
    else if ($('#rdbEContratoFechas').attr('class') === "fa fa-check-circle") {
        if (ddlEContratoP.value === "0") {
            alertify.error("Debes ingresar un Estado de Contrato");
            ddlEContratoP.focus()
        }
        else if (txtFechaIP.value === "" || txtFechaFP.value === "") {
            alertify.error("Debes ingresar Fecha inicio y Fecha final");
            txtFechaIP.focus();
        }
        else {
            //Validamos que la Fecha final sea posterior a la Fecha inicial
            if (!fechaCorrecta(txtFechaIP.value, txtFechaFP.value)) {
                alertify.error("La Fecha final no puede ser anterior a la Fecha inicial");
                txtFechaIP.focus();
            }
            else {
                alertify.success("Funciona");
                //Aquí poner búsqueda
            }
        }
    }
    else if ($('#rdbFechas').attr('class') === "fa fa-check-circle") {
        if (txtFechaIP.value === "" || txtFechaFP.value === "") {
            alertify.error("Debes ingresar Fecha inicio y Fecha final");
            txtFechaIP.focus();
        }
        else {
            //Validamos que la Fecha final sea posterior a la Fecha inicial
            if (!fechaCorrecta(txtFechaIP.value, txtFechaFP.value)) {
                alertify.error("La Fecha final no puede ser anterior a la Fecha inicial");
                txtFechaIP.focus();
            }
            else {
                alertify.success("Funciona");
                //Aquí poner búsqueda
            }
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
    ddlEContratoP.setAttribute("disabled", "true");
    ddlAreaP.setAttribute("disabled", "true");
    txtFechaIP.setAttribute("disabled", "true");
    txtFechaFP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlEContratoP.value = "";
    ddlAreaP.value = "0";
    txtFechaIP.value = "";
    txtFechaFP.value = "";

    //Quitamos la selección a los "radio button" de filtros
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbEContratoFechas').attr("class", "fa fa-circle");
    $("#rdbEContratoFechas").css("color", "inherit");

    $('#rdbArea').attr("class", "fa fa-circle");
    $("#rdbArea").css("color", "inherit");

    $('#rdbAreaFechas').attr("class", "fa fa-circle");
    $("#rdbAreaFechas").css("color", "inherit");

    $('#rdbFechas').attr("class", "fa fa-circle");
    $("#rdbFechas").css("color", "inherit");

    //Resetear DataGrid y colocar datos sin filtros
});

//Evento click para rdbEContratoA
$(document).on('click', '#rdbEContratoA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlEContratoP.removeAttribute("disabled");
    ddlEContratoP.focus();

    //Deshabilitamos los demás filtros
    ddlAreaP.setAttribute("disabled", "true");
    txtFechaIP.setAttribute("disabled", "true");
    txtFechaFP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlAreaP.value = "0";
    txtFechaIP.value = "";
    txtFechaFP.value = "";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbEContrato').attr("class", "fa fa-check-circle");
    $("#rdbEContrato").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContratoFechas').attr("class", "fa fa-circle");
    $("#rdbEContratoFechas").css("color", "inherit");

    $('#rdbArea').attr("class", "fa fa-circle");
    $("#rdbArea").css("color", "inherit");

    $('#rdbAreaFechas').attr("class", "fa fa-circle");
    $("#rdbAreaFechas").css("color", "inherit");

    $('#rdbFechas').attr("class", "fa fa-circle");
    $("#rdbFechas").css("color", "inherit");
});

//Evento click para rdbEContratoFechasA
$(document).on('click', '#rdbEContratoFechasA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlEContratoP.removeAttribute("disabled");
    ddlEContratoP.focus();
    txtFechaIP.removeAttribute("disabled");
    txtFechaFP.removeAttribute("disabled");

    //Deshabilitamos los demás filtros
    ddlAreaP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlAreaP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbEContratoFechas').attr("class", "fa fa-check-circle");
    $("#rdbEContratoFechas").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbArea').attr("class", "fa fa-circle");
    $("#rdbArea").css("color", "inherit");

    $('#rdbAreaFechas').attr("class", "fa fa-circle");
    $("#rdbAreaFechas").css("color", "inherit");

    $('#rdbFechas').attr("class", "fa fa-circle");
    $("#rdbFechas").css("color", "inherit");
});

//Evento click para rdbAreaA
$(document).on('click', '#rdbAreaA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlAreaP.removeAttribute("disabled");
    ddlAreaP.focus();

    //Deshabilitamos los demás filtros
    ddlEContratoP.setAttribute("disabled", "true");
    txtFechaIP.setAttribute("disabled", "true");
    txtFechaFP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlEContratoP.value = "";
    txtFechaIP.value = "";
    txtFechaFP.value = "";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbArea').attr("class", "fa fa-check-circle");
    $("#rdbArea").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbEContratoFechas').attr("class", "fa fa-circle");
    $("#rdbEContratoFechas").css("color", "inherit");

    $('#rdbAreaFechas').attr("class", "fa fa-circle");
    $("#rdbAreaFechas").css("color", "inherit");

    $('#rdbFechas').attr("class", "fa fa-circle");
    $("#rdbFechas").css("color", "inherit");
});

//Evento click para rdbEContratoFechasA
$(document).on('click', '#rdbAreaFechasA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    ddlAreaP.removeAttribute("disabled");
    ddlAreaP.focus();
    txtFechaIP.removeAttribute("disabled");
    txtFechaFP.removeAttribute("disabled");

    //Deshabilitamos los demás filtros
    ddlEContratoP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlEContratoP.value = "";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbAreaFechas').attr("class", "fa fa-check-circle");
    $("#rdbAreaFechas").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbArea').attr("class", "fa fa-circle");
    $("#rdbArea").css("color", "inherit");

    $('#rdbEContratoFechas').attr("class", "fa fa-circle");
    $("#rdbEContratoFechas").css("color", "inherit");

    $('#rdbFechas').attr("class", "fa fa-circle");
    $("#rdbFechas").css("color", "inherit");
});


//Evento click para rdbFechasA
$(document).on('click', '#rdbFechasA', function (e) {
    e.preventDefault();

    //Habilitamos el filtro correspondiente
    txtFechaIP.removeAttribute("disabled");
    txtFechaFP.removeAttribute("disabled");
    txtFechaIP.focus();

    //Deshabilitamos los demás filtros
    ddlEContratoP.setAttribute("disabled", "true");
    ddlAreaP.setAttribute("disabled", "true");

    //Reseteamos los valores de los demás filtros
    ddlEContratoP.value = "";
    ddlAreaP.value = "0";

    //Ponemos como seleccionado el "radio button" del filtro seleccionado
    $('#rdbFechas').attr("class", "fa fa-check-circle");
    $("#rdbFechas").css("color", "#5cb85c");

    //Quitamos la selección a los "radio button" de filtros no seleccionados
    $('#rdbEContrato').attr("class", "fa fa-circle");
    $("#rdbEContrato").css("color", "inherit");

    $('#rdbArea').attr("class", "fa fa-circle");
    $("#rdbArea").css("color", "inherit");

    $('#rdbEContratoFechas').attr("class", "fa fa-circle");
    $("#rdbEContratoFechas").css("color", "inherit");

    $('#rdbAreaFechas').attr("class", "fa fa-circle");
    $("#rdbAreaFechas").css("color", "inherit");
});

//Función para comparar fechas
function fechaCorrecta(fecha1, fecha2) {
    //Comparamos las fechas
    if (Date.parse(fecha1) > Date.parse(fecha2)) {
        return false;
    } else {
        return true;
    }
}