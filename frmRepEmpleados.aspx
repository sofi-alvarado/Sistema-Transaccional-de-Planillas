<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="frmRepEmpleados.aspx.cs" Inherits="frmRepEmpleados" %>

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
            $("#rdbEContratoA").hover(function () {
                $("#rdbEContratoA").css("font-style", "italic");
                $("#rdbEContratoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbEContratoA").css("font-style", "inherit");
                $("#rdbEContratoA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbDepartamentoA").hover(function () {
                $("#rdbDepartamentoA").css("font-style", "italic");
                $("#rdbDepartamentoA").css("color", "#5cb85c");
            }, function () {
                $("#rdbDepartamentoA").css("font-style", "inherit");
                $("#rdbDepartamentoA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbMunicipioA").hover(function () {
                $("#rdbMunicipioA").css("font-style", "italic");
                $("#rdbMunicipioA").css("color", "#5cb85c");
            }, function () {
                $("#rdbMunicipioA").css("font-style", "inherit");
                $("#rdbMunicipioA").css("color", "inherit");
            });
        });

        $(document).ready(function () {
            $("#rdbNvlEducA").hover(function () {
                $("#rdbNvlEducA").css("font-style", "italic");
                $("#rdbNvlEducA").css("color", "#5cb85c");
            }, function () {
                $("#rdbNvlEducA").css("font-style", "inherit");
                $("#rdbNvlEducA").css("color", "inherit");
            });
        });
    </script>

    <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">
        var ddlFiltro = '<%=ddlFiltro.ClientID%>';
    </script>

    <!-- Código del formulario -->
    <section class="content-header">
        <h1 style="text-align: center">REPORTE DE EMPLEADOS
        </h1>
        <section class="content">
            <!-- Filtros -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <div class="form-control-static col-md-12">
                                <h4>
                                    <label>Filtrar por:</label></h4>
                            </div>
                            <div class="form-group col-md-2">
                                <a href="#" id="rdbEContratoA">
                                    <i class="fa fa-circle" id="rdbEContrato"></i>
                                    <span>
                                        Estado Contrato
                                    </span>
                                </a>
                            </div>
                            <div class="form-group col-md-2">
                                <a href="#" id="rdbDepartamentoA">
                                    <i class="fa fa-circle" id="rdbDepartamento"></i>
                                    <span>
                                        Departamento
                                    </span>
                                </a>
                            </div>
                            <div class="form-group col-md-2">
                                <a href="#" id="rdbMunicipioA">
                                    <i class="fa fa-circle" id="rdbMunicipio"></i>
                                    <span>
                                        Municipio
                                    </span>
                                </a>
                            </div>
                            <div class="form-group col-md-2">
                                <a href="#" id="rdbNvlEducA">
                                    <i class="fa fa-circle" id="rdbNvlEduc"></i>
                                    <span>
                                        Nivel Educativo
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
                        <!-- Cambiar el nombre "tbl_pacientes" a "tbl_empleados" en el JS de este formulario-->
                        <table id="tbl_empleados" class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>DUI</th>
                                    <th>Nombre</th>
                                    <th>Sexo</th>
                                    <th>Celular</th>
                                    <th>Email</th>
                                    <th>Contrato</th>
                                    <th>Departamento</th>
                                    <th>Municipio</th>
                                    <th>Nivel Educativo</th>
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
    <script src="js/ReporteEmpleados.js"></script>
</asp:Content>