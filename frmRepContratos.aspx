<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="frmRepContratos.aspx.cs" Inherits="frmRepContratos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        @media print {
            .screenOnly {
                display: none;
            }
        }
        /*Establece el formato del PDF en vertical*/
        @page {
            size: landscape;
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
            $("#rdbAreaA").hover(function () {
                $("#rdbAreaA").css("font-style", "italic");
                $("#rdbAreaA").css("color", "#5cb85c");
            }, function () {
                $("#rdbAreaA").css("font-style", "inherit");
                $("#rdbAreaA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbAreaFechasA").hover(function () {
                $("#rdbAreaFechasA").css("font-style", "italic");
                $("#rdbAreaFechasA").css("color", "#5cb85c");
            }, function () {
                $("#rdbAreaFechasA").css("font-style", "inherit");
                $("#rdbAreaFechasA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbEContratoA").hover(function () {
                $("#rdbEContratoA").css("font-style", "italic");
                $("#rdbEContratoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbEContratoA").css("font-style", "inherit");
                $("#rdbEContratoA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbEContratoFechasA").hover(function () {
                $("#rdbEContratoFechasA").css("font-style", "italic");
                $("#rdbEContratoFechasA").css("color", "#5cb85c");
            }, function () {
                $("#rdbEContratoFechasA").css("font-style", "inherit");
                $("#rdbEContratoFechasA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbFechasA").hover(function () {
                $("#rdbFechasA").css("font-style", "italic");
                $("#rdbFechasA").css("color", "#5cb85c");
            }, function () {
                $("#rdbFechasA").css("font-style", "inherit");
                $("#rdbFechasA").css("color", "inherit");
            });
        });
    </script>

    <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">
        var ddlEContrato = '<%=ddlEContrato.ClientID%>';
        var ddlArea = '<%=ddlArea.ClientID%>';
        var txtFechaI = '<%=txtFechaI.ClientID%>';
        var txtFechaF = '<%=txtFechaF.ClientID%>';
    </script>

    <!-- Código del formulario -->
    <section class="content-header">
        <h1 style="text-align: center">REPORTE DE CONTRATOS
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
                                <a href="#" id="rdbEContratoA">
                                    <i class="fa fa-circle" id="rdbEContrato"></i>
                                    <span>
                                        Estado
                                    </span>
                                </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="#" id="rdbEContratoFechasA">
                                    <i class="fa fa-circle" id="rdbEContratoFechas"></i>
                                    <span>
                                        Estado + Fechas
                                    </span>
                                </a>
                                <br /><br />
                                <asp:DropDownList ID="ddlEContrato" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server" ClientIDMode="Static">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-3">
                                <a href="#" id="rdbAreaA">
                                    <i class="fa fa-circle" id="rdbArea"></i>
                                    <span>
                                        Área
                                    </span>
                                </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="#" id="rdbAreaFechasA">
                                    <i class="fa fa-circle" id="rdbAreaFechas"></i>
                                    <span>
                                        Área + Fechas
                                    </span>
                                </a>
                                <br /><br />
                                <asp:DropDownList ID="ddlArea" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server" ClientIDMode="Static">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-6" align="center">
                                <a href="#" id="rdbFechasA">
                                    <i class="fa fa-circle" id="rdbFechas"></i>
                                    <span>
                                        Solo Fechas
                                    </span>
                                </a>
                                <br /><br />
                                <!-- Línea de Fecha inicio - Inicio -->
                                <div class="form-group col-md-3" align="left">
                                    <label class="form-control-static">Fecha inicio:</label>
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:TextBox ID="txtFechaI" Text="" CssClass="form-control" TextMode="Date" Enabled="false" ToolTip="Dato requerido" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-1">
                                    <label class="form-control-static text-red">*</label>
                                </div>
                                <!-- Línea de Fecha inicio - Fin -->
                                <!-- Línea de Fecha fin - Inicio -->
                                <div class="form-group col-md-3" align="left">
                                    <label class="form-control-static">Fecha fin:</label>
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:TextBox ID="txtFechaF" Text="" CssClass="form-control" TextMode="Date" Enabled="false" ToolTip="Dato requerido" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-1">
                                    <label class="form-control-static text-red">*</label>
                                </div>
                                <!-- Línea de Fecha fin - Fin -->
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
                        <!-- Cambiar el nombre "tbl_pacientes" a "tbl_contratos" en el JS de este formulario-->
                        <table id="tbl_contratos" class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>DUI</th>
                                    <th>Nombre</th>
                                    <th>Fecha contrato</th>
                                    <th>Sueldo</th>
                                    <th>Cargo</th>
                                    <th>Estado contrato</th>
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">
                                <!-- DATA POR MEDIO DE AJAX-->
                                <!-- Contenido de prueba
                                <tr>
                                    <td>05069875-9</td>
                                    <td>Rodríguez Cruz Hugo Alexander</td>
                                    <td>M</td>
                                    <td>7777-8888</td>
                                    <td>husrodriguez8@gmail.com</td>
                                    <td>Activo</td>
                                    <td>La Libertad</td>
                                    <td>Santa Tecla</td>
                                    <td>Superior Estudiante</td>
                                </tr>-->
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
    <script src="js/ReporteContratos.js"></script>
</asp:Content>