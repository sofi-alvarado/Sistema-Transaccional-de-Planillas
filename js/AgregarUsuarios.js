//Obtenemos las variables de los controles ASP.Net
var txtUsuarioP = document.getElementById(txtUsuario);
var txtClaveP = document.getElementById(txtClave);
var txtClaveCP = document.getElementById(txtClaveC);
var ddlTipoUsuarioP = document.getElementById(ddlTipoUsuario);

//Evento click para btnBuscar
$(document).on('click', '#btnRegistrar', function (e) {
    e.preventDefault();

    if (txtUsuarioP.value === "" || txtClaveP.value === "" || txtClaveCP.value === "" || ddlTipoUsuarioP.value === "0") {

        //Validación de campos vacíos
        if (txtUsuarioP.value === "") {
            alertify.error("Debes ingresar un Usuario a agregar");
        }
        else if(txtClaveP.value === ""){
            alertify.error("Debes ingresar una contraseña");
        }
        else if (txtClaveCP.value === "") {
            alertify.error("Debes confirmar la contraseña");
        }
        else if(ddlTipoUsuarioP.value === "0")
        {
            alertify.error("Debes seleccionar un Tipo de Usuario");
        }

    }
    else {

        //Validación de formato de contraseña
        if (!(/^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/.test(txtClaveP.value))) {
            alertify.error("La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.");
        }
        else if (txtClaveP.value != txtClaveCP.value) {
            //Validación de coincidencia de contraseñas
            alertify.error("Las contraseñas deben coincidir");
        }
        else {
            //Colocar todo para registro de usuario
            alertify.success("Usuario agregado satisfactoriamente");

            //Limpiar campos si el registro fue exitoso
            txtUsuarioP.value = "";
            txtClaveP.value = "";
            txtClaveCP.value = "";
            ddlTipoUsuarioP.value = "0";
        }
    }

});