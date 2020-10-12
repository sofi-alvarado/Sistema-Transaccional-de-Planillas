<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="frmConUsuarios.aspx.cs" Inherits="frmConsultarUsuarios" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Máscara para txtUsuario -->
    <script type="text/javascript">
        $(document).ready(
          function() {
           $('#<%= txtUsuario.ClientID %>').click(
             function() {
                 $('#<%= txtUsuario.ClientID %>').mask("999999999");
                });
          });
    </script>

    <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">
        //IMPORTANTE: Con el nombre "txtUsuario" de la variable creada se buscará el control en el archivo Usuarios.js
        var txtUsuario = '<%=txtUsuario.ClientID%>';
        var ddlTipo = '<%=ddlTipo.ClientID%>';
        var ddlEstado = '<%=ddlEstado.ClientID%>';
    </script>

    <!-- Script para cuando el puntero del mouse pase sobre las opciones de filtros (los "radioButton") -->
    <script>
        $(document).ready(function () {
            $("#rdbUsuarioA").hover(function () {
                $("#rdbUsuarioA").css("font-style", "italic");
                $("#rdbUsuarioA").css("color", "#5cb85c");
            }, function () {
                $("#rdbUsuarioA").css("font-style", "inherit");
                $("#rdbUsuarioA").css("color", "inherit");
            });
        });


        $(document).ready(function () {
            $("#rdbTipoA").hover(function () {
                $("#rdbTipoA").css("font-style", "italic");
                $("#rdbTipoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbTipoA").css("font-style", "inherit");
                $("#rdbTipoA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbEstadoA").hover(function () {
                $("#rdbEstadoA").css("font-style", "italic");
                $("#rdbEstadoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbEstadoA").css("font-style", "inherit");
                $("#rdbEstadoA").css("color", "inherit");
            });
        });
    </script>
    

    <!-- Codigo de formulario -->
    <section class="content-header">
        <h1 style="text-align: center">CONSULTAR USUARIOS
        </h1>
        <section class="content">
            
            <!-- Filtros -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <div class="form-control-static col-md-12">
                                <h4>
                                    <label>Filtrar por:</label>
                                </h4>
                            </div>
                            <div class="form-group col-md-3">
                                <a href="#" id="rdbUsuarioA">
                                    <i class="fa fa-circle" id="rdbUsuario"></i>
                                    <span>
                                        Usuario
                                    </span>
                                </a>
                                <br />
                                <asp:TextBox ID="txtUsuario" Text="" CssClass="form-control" runat="server" Enabled="false" PlaceHolder="DUI del empleado sin guiones, ej: 059346821"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                            </div>
                            <div class="form-group col-md-3">
                                <a href="#" id="rdbTipoA">
                                    <i class="fa fa-circle" id="rdbTipo"></i>
                                    <span>
                                        Tipo
                                    </span>
                                </a>
                                <br />
                                <asp:DropDownList ID="ddlTipo" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-1">
                            </div>
                            <div class="form-group col-md-3">
                                <a href="#" id="rdbEstadoA">
                                    <i class="fa fa-circle" id="rdbEstado"></i>
                                    <span>
                                        Estado
                                    </span>
                                </a>
                                <br />
                                <asp:DropDownList ID="ddlEstado" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6"  align="right">
                    <input id="btnBuscar" type="button" class="btn btn-primary" style="width:200px" value="Buscar" />
                </div>
                <div class="col-xs-6" align="left">
                    <input id="btnLimpiar" type="button" class="btn btn-default bg-gray" style="width:200px" value="Limpiar" />
                </div>
            </div>
            <hr />
            <!-- Datatable Part -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Lista de Usuarios</h3>
                        </div>
                        <div class="box-body table-responsive">
                            <!-- Cambiar el nombre "tbl_pacientes" a "tbl_usuarios" en el JS de este formulario-->
                            <table id="tbl_usuarios" class="table table-bordered table-hover text-center">
                                <thead>
                                    <tr>
                                        <th>Usuario (DUI)</th>
                                        <th>Nombre</th>
                                        <th>Tipo</th>
                                        <th>Estado</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody id="tbl_body_table">
                                    <!-- DATA POR MEDIO DE AJAX-->
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Datatable -->
        </section>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- Agregar JS para funciones-->
    <script src="js/Usuarios.js"></script>
</asp:Content>
