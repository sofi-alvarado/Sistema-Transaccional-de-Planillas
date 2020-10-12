<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalP.master" AutoEventWireup="true" CodeFile="frmBoletaPagoP.aspx.cs" Inherits="frmBoletaPagoP" %>

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

        var ddlYear = '<%=txtBuscar.ClientID%>';
    </script>

    <section class="content-header">
        <h1 style="text-align: center">BOLETA DE PAGO</h1>
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
                                          <span>Buscar</span>
                                     </div>
                                            <asp:TextBox ID="txtBuscar" Text="" CssClass="form-control" runat="server" Enabled="false" PlaceHolder="Ingrese el usuario sin guiones"></asp:TextBox>
                                          
                                           
                                </div>
                                                <!-- Buscar -->
                                <div class="form-group col-md-3">
                                    <br /><br />
                                       <div class="form-control-static col-md-12">
                                       
                                     </div>
                                            <input id="btnBuscar" type="button" class="btn btn-primary" style="width:200px" value="Buscar" />
                                </div>

                        </div>
                    </div>
               </div>
           </div>
        
            
           

            <!-- Datatable Part -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box-body table-responsive">
                        
                        <table id=" " class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>DUI</th>
                                    <th>Empleado</th>
                                    <th>Área</th>
                                    <th>Cargo</th>
                                    <th>Acciones</th>
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

</asp:Content>