<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="frmAggUsuarios.aspx.cs" Inherits="frmAgregarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- Evento hover para botón "show_password", sirve para mostrar Contraseña-->
    <script type="text/javascript">
        $(document).ready(function () {  
            $('#show_password').hover(function show() {  
                //Cambiamos el valor del atributo "type" a "text"
                $('#<%= txtClave.ClientID %>').attr('type', 'text');  
                $('#icon_password').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },  
            function () {  
                //Cambiamos el valor del atributo "type" a "password"
                $('#<%= txtClave.ClientID %>').attr('type', 'password');  
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

     <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">
        //IMPORTANTE: Con el nombre "txtUsuario" de la variable creada se buscará el control en el archivo Usuarios.js
        var txtUsuario = '<%=txtUsuario.ClientID%>';
        var txtClave = '<%=txtClave.ClientID%>';
        var txtClaveC = '<%=txtClaveC.ClientID%>';
        var ddlTipoUsuario = '<%=ddlTipoUsuario.ClientID%>';
    </script>

    <!-- Código del formulario -->
    <section class="content-header">
        <h1 style="text-align: center">
            AGREGAR USUARIO
        </h1>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="col-md-12">
                                <label>Usuario</label>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtUsuario" Text="" CssClass="form-control" runat="server" PlaceHolder="DUI del empleado sin guiones, ej: 059346821" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="col-md-12">
                                <label>Contraseña</label>
                            </div>
                            <div class="form-group col-md-11">
                                <asp:TextBox ID="txtClave" Text="" TextMode="Password" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-1">
                                <button id="show_password" class="btn btn-primary" type="button">
                                    <span id="icon_password" class="fa fa-eye-slash icon"></span>  
                                </button>
                            </div>
                            <div class="col-md-12">
                                <label>Confirmar Contraseña</label>
                            </div>
                            <div class="form-group col-md-11">
                                <asp:TextBox ID="txtClaveC" Text="" TextMode="Password" CssClass="form-control" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-1">
                                <button id="show_passwordc" class="btn btn-primary" type="button">
                                    <span id="icon_passwordc" class="fa fa-eye-slash"></span>  
                                </button>
                            </div>
                            <div class="col-md-12">
                                <label class="form-control-static">Tipo de Usuario</label>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:DropDownList ID="ddlTipoUsuario" CssClass="form-control btn btn-default bg-gray" runat="server" ClientIDMode="Static">
                                    <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                    <asp:ListItem>Administrador</asp:ListItem>
                                    <asp:ListItem>Jefe de Planilla</asp:ListItem>
                                    <asp:ListItem>Planillero</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-xs-6" align="right">
                    <input id="btnRegistrar" class="btn btn-primary" style="width:200px" type="button" value="Registrar" />
                </div>
                <div class="col-md-6 col-xs-6" align="left">
                    <input id="btnCancelar" class="btn btn-danger" style="width:200px" type="button" value="Cancelar" />
                </div>
            </div>
        </section>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    

    <!-- Agregar JS para funciones-->
    <script src="js/AgregarUsuarios.js"></script>
</asp:Content>

