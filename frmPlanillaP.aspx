<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalP.master" AutoEventWireup="true" CodeFile="frmPlanillaP.aspx.cs" Inherits="frmPlanillaP" %>

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

     <!-- Script para obtener el ID de los controles de ASP.Net -->
    <script type="text/javascript">

        var ddlQuin = '<%=ddlQuin.ClientID%>';
        var ddlMes = '<%=ddlMes.ClientID%>';
        var ddlYear = '<%=ddlYear.ClientID%>';
    </script>

    <section class="content-header">
        <h1 style="text-align: center"> PLANILLAS
        </h1>
        <section class="content">
            <!-- Filtros -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                               <div class ="form-group col-md-1"></div>
                               <div class="form-group col-md-3">
                                  <br /><br />
                                     <div class="form-control-static col-md-12">
                                          <span>Quincena</span>
                                     </div>
                                            <asp:DropDownList ID="ddlQuin" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server" ClientIDMode="Static">
                                                <asp:ListItem Value="0">Primera</asp:ListItem>
                                            </asp:DropDownList>
                                            <div class ="form-group col-md-1"></div>
                                </div>
                                <div class="form-group col-md-3">
                                   <br /><br />
                                      <div class="form-control-static col-md-12">
                                          <span>Mes</span>
                                      </div>
                                            <asp:DropDownList ID="ddlMes" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server" ClientIDMode="Static">
                                                <asp:ListItem Value="0">Enero</asp:ListItem>
                                            </asp:DropDownList>
                                            <div class ="form-group col-md-1"></div>
                                </div>   
                                <div class="form-group col-md-3">
                                   <br /><br />
                                      <div class="form-control-static col-md-12">
                                           <span >Año</span>
                                       </div>
                                            <asp:DropDownList ID="ddlYear" CssClass="form-control btn btn-default bg-gray" Enabled="false" runat="server" ClientIDMode="Static">
                                                <asp:ListItem Value="0">Enero</asp:ListItem>
                                            </asp:DropDownList>
                                            <div class ="form-group col-md-1"></div>
                               </div>
                               <div class ="form-group col-md-1"></div>
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
                        
                        <table id=" " class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>DUI</th>
                                    <th>Nombre</th>
                                    <th>Días Trabajados</th>
                                    <th>Sueldo</th>
                                    <th>Bonificaciones</th>
                                    <th>Vacación</th>
                                    <th>Total Gravado</th>
                                    <th>Anticipos</th>
                                    <th>ISSS</th>
                                    <th>AFP</th>
                                    <th>Renta</th>
                                    <th>Total Pago</th>
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">
                              
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!-- End Datatable -->

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
