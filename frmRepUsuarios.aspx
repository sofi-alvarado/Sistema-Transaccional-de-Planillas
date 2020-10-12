<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="frmRepUsuarios.aspx.cs" Inherits="frmRepUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        @media print {
            .screenOnly {
                display: none;
            }
        }
        /*Establece el formato del PDF en vertical*/
        @page {
            size: portrait;
        }
        
        /*@media screen {
            .printOnly {
                display: none;
            }
        }*/
    </style>

    <!-- Script para cuando el puntero del mouse pase sobre las opciones de filtros (los "radioButton") -->
    <script>
        $(document).ready(function () {
            $("#rdbEstadoA").hover(function () {
                $("#rdbEstadoA").css("font-style", "italic");
                $("#rdbEstadoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbEstadoA").css("font-style", "inherit");
                $("#rdbEstadoA").css("color", "inherit");
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
    </script>

    <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">
        var ddlFiltro = '<%=ddlFiltro.ClientID%>';
    </script>

    <!-- Código del formulario -->
    <section class="content-header">
        <h1 style="text-align: center">
            REPORTE DE USUARIOS
        </h1>
        <section class="content">
            <!-- Filtros -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <div class="form-control-static col-md-12">
                                <h4><label>Filtrar por:</label></h4>
                            </div>
                            <div class="form-group col-md-2">
                                <a href="#" id="rdbEstadoA">
                                    <i class="fa fa-circle" id="rdbEstado"></i>
                                    <span>
                                        Estado
                                    </span>
                                </a>
                                <br />
                                <br />
                                <a href="#" id="rdbTipoA">
                                    <i class="fa fa-circle" id="rdbTipo"></i>
                                    <span>
                                        Tipo
                                    </span>
                                </a>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:DropDownList ID="ddlFiltro" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Filtros - Fin -->
            <div class="row">
                <div class="col-xs-6" align="right">
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
                    <div class="box-body table-responsive">
                        <!-- Cambiar el nombre "tbl_pacientes" a "tbl_usuariosr" en el JS de este formulario-->
                        <table id="tbl_usuariosr" class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Usuario</th>
                                    <th>Estado</th>
                                    <th>Tipo de Usuario</th>
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">
                                <!-- DATA POR MEDIO DE AJAX-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!-- End Datatable -->

    <div class="printOnly">
        <!-- Aquí poner la información que se va a imprimir -->
        <!-- Poner el estilo del MediaScreen del printOnly en display: none -->
    </div>

    <div class="row" align="center">
        <table>
            <tr>
                <td>
                    <a href="#" onclick="window.print();" class="screenOnly btn btn-primary">
                        <i class="fa fa-print"></i>
                        Imprimir
                    </a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    

    <!-- Agregar JS para funciones-->
    <script src="js/ReporteUsuarios.js"></script>
</asp:Content>