<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalP.master" AutoEventWireup="true" CodeFile="frmModContrasenaP.aspx.cs" Inherits="frmModContrasenaP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <!-- Evento hover para botón "show_password", sirve para mostrar Contraseña-->
    <script type="text/javascript">
        $(document).ready(function () {  
            $('#show_password').hover(function show() {  
                //Cambiamos el valor del atributo "type" a "text"
                $('#<%= txtClaveNueva.ClientID %>').attr('type', 'text');  
                $('#icon_password').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },  
            function () {  
                //Cambiamos el valor del atributo "type" a "password"
                $('#<%= txtClaveNueva.ClientID %>').attr('type', 'password');  
                $('#icon_password').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
            });
        });  
    </script>

    <!-- Evento hover para botón "show_passwordc", sirve para mostrar Confirmar Contraseña-->
    <script type="text/javascript">
        $(document).ready(function () {  
            $('#show_passwordc').hover(function show() {  
                //Cambiamos el valor del atributo "type" a "password"
                $('#<%= txtClaveC.ClientID %>').attr('type', 'text');  
                $('#icon_passwordc').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },  
            function () {  
                //Cambiamos el valor del atributo "type" a "password"
                $('#<%= txtClaveC.ClientID %>').attr('type', 'password');  
                $('#icon_passwordc').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
            });  
        });  
    </script>

<!-- Código del formulario -->
    <section class="content-header">
        <h1 style="text-align: center">
            Modificar Contraseña
        </h1>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="form-group col-md-12">
                                <label>Contraseña actual</label>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtContraActu" Text="" CssClass="form-control" runat="server" PlaceHolder="Ingrese su contraseña actual"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Contraseña nueva</label>
                            </div>
                            <div class="form-group col-md-11">
                                <asp:TextBox ID="txtClaveNueva" Text="" TextMode="Password" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-1">
                                <button id="show_password" class="btn btn-primary" type="button">
                                    <span id="icon_password" class="fa fa-eye-slash icon"></span>  
                                </button>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Repita la contraseña</label>
                            </div>
                            <div class="form-group col-md-11">
                                <asp:TextBox ID="txtClaveC" Text="" TextMode="Password" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-1">
                                <button id="show_passwordc" class="btn btn-primary" type="button">
                                    <span id="icon_passwordc" class="fa fa-eye-slash"></span>  
                                </button>
                            </div>
                            <div class="form-group">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <div class="row">    
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-2 col-sm-6">
                        <input id="btnAceptar" class="btn btn-primary btn-block" type="button" value="Aceptar" />
                    </div>
                    <div class="col-md-2 col-sm-6">
                        <input id="btnCancelar" class="btn btn-danger btn-block" type="button" value="Cancelar" />
                    </div>
                    <div class="col-md-2 col-sm-6">
                        <input id="btnVolver" class="btn btn-default bg-gray btn-block" type="button" value="Volver" />
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
        </section>
    </section>
</asp:Content>