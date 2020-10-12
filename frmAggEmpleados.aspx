<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalJP.master" AutoEventWireup="true" CodeFile="frmAggEmpleados.aspx.cs" Inherits="frmAggEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
        <h1 style="text-align: center">
            AGREGAR EMPLEADO
        </h1>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body">
                            <!-- Primera Fila - Inicio -->
                            <div class="form-group col-md-3">
                                <label>Foto</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="form-group col-md-3">
                                <label>Fecha de nacimiento:</label>
                                <asp:TextBox ID="txtFechaNac" Text="" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Sexo:</label>
                                <br />
                                <input name="rdbSexo" id="rdbFemenino" type="radio" class="form-control" />
                                <label class="form-control-static">F</label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="rdbSexo" id="rdbMasculino" type="radio" class="radio" />
                                <label class="form-control-static">M</label>
                            </div>
                            <div class="form-group col-md-3" align="center">
                                <h3><label>Contrato</label></h3>
                            </div>
                            <!-- Primera Fila - Fin -->
                            <!-- Segunda Fila - Inicio -->
                            <div class="form-group col-md-3">
                                <label>DUI:</label>
                                <asp:TextBox ID="txtDUI" Text="" CssClass="form-control" runat="server" PlaceHolder="Ej.: 05934682-1"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Email:</label>
                                <asp:TextBox ID="txtEmail" Text="" CssClass="form-control" runat="server"  PlaceHolder="Ej.: micorreo@mail.com"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Pais de origen:</label>
                                <asp:DropDownList ID="ddlPais" CssClass="form-control btn btn-default bg-gray" Enabled="true" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Área de trabajo:</label>
                                <asp:DropDownList ID="ddlArea" CssClass="form-control btn btn-default bg-gray" Enabled="true" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <!-- Segunda Fila - Fin -->
                            <!-- Tercera Fila - Inicio -->
                            <div class="form-group col-md-3">
                                <label>NIT:</label>
                                <asp:TextBox ID="txtNIT" Text="" CssClass="form-control" runat="server" PlaceHolder="Ej.: 0593-648976-131-4"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Número de teléfono:</label>
                                <asp:TextBox ID="txtNumTel" Text="" CssClass="form-control" runat="server"  PlaceHolder="Ej.: 2222-4444"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Departamento de residencia:</label>
                                <asp:DropDownList ID="ddlDepartamento" CssClass="form-control btn btn-default bg-gray" Enabled="true" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Cargo:</label>
                                <asp:DropDownList ID="ddlCargo" CssClass="form-control btn btn-default bg-gray" Enabled="true" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <!-- Tercera Fila - Fin -->
                            <!-- Cuarta Fila - Inicio -->
                            <div class="form-group col-md-3">
                                <label>Nombres:</label>
                                <asp:TextBox ID="txtNombres" Text="" CssClass="form-control" runat="server" PlaceHolder="Ej.: 0593-648976-131-4"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Número de celular:</label>
                                <asp:TextBox ID="txtNumCel" Text="" CssClass="form-control" runat="server"  PlaceHolder="Ej.: 7777-6666"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Municipio de residencia:</label>
                                <asp:DropDownList ID="ddlMunicipio" CssClass="form-control btn btn-default bg-gray" Enabled="true" runat="server">
                                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Salario:</label>
                                <asp:TextBox ID="txtSalario" Text="" CssClass="form-control" runat="server" PlaceHolder="Ej.: 550.00"></asp:TextBox>
                            </div>
                            <!-- Cuarta Fila - Fin -->
                            <!-- Quinta Fila - Inicio -->
                            <div class="form-group col-md-3">
                                <label>Apellidos:</label>
                                <asp:TextBox ID="txtApellidos" Text="" CssClass="form-control" runat="server" PlaceHolder="Ej.: 0593-648976-131-4"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Dirección:</label>
                                <asp:TextBox ID="txtDireccion" Text="" CssClass="form-control" TextMode="SingleLine" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <!-- Quinta Fila - Fin -->
                            <div class="form-group">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6"  align="right">
                    <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Width="200px" Text="Registrar"/>
                </div>
                <div class="col-xs-6" align="left">
                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" />
                </div>
            </div>
        </section>
    </section>
</asp:Content>

