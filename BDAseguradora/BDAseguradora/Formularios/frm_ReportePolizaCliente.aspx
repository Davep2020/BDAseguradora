<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ReportePolizaCliente.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ReportePolizaCliente" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">


    <form id="form1" runat="server">
        <%-- Codigo del modal de cerrar sesion --%>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cerrar Sesión</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ¿Estas Seguro en Cerrar Sesión?
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnNo" runat="server" data-dismiss="modal" Text="No" />
                        <asp:Button ID="btnSi" runat="server" Text="Si" OnClick="btnSi_Click" />

                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid" style="margin-top: 30px">
            <div class="row mb-2">
                <div class="col-sm-4 Primero ml-3 mr-5">
                    <h2>Bienvenido</h2>
                    <asp:Label ID="lblNombre" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <h3>Mantenimientos</h3>
                    <p>Cambios en diferentes sectores</p>
                    <ul class="nav nav-pills flex-column">

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_AgregarCobertura.aspx">Ingresar Cobertura</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ConsultarCobertura.aspx">Consultar Cobertura</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_RegistroPoliza.aspx">Ingresar Póliza</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ConsultarPoliza.aspx">Consultar Póliza</a>
                        </li>



                    </ul>

                </div>
                <hr class="d-sm-none">

                <div class="col-sm-6 Primero ml-3 mr-5 mb-5 ">
                    <asp:ScriptManager ID="scmReporteClientes" runat="server"></asp:ScriptManager>
                    <div>
                        <h1 class="auto-style1">Reporte de Clientes</h1>
                        <p>Buscar por</p>
                    </div>
                    <asp:Label ID="Label2" runat="server" Text="Cédula:"></asp:Label>
                    <asp:TextBox ID="txtCedula"  runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Primer Apellido:"></asp:Label>
                    <asp:TextBox ID="txtApellido"  runat="server"></asp:TextBox>

                    <div style="margin-bottom: 15px"></div>

                    <asp:Label ID="Label3" runat="server" Text="Monto:"></asp:Label>
                    <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Nombre Cobertura:"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                   
                    <div style="margin-bottom: 15px"></div>

                     <asp:Button ID="btVerReporte" runat="server" OnClick="btBuscar_Click" Text="Ver Reporte" class="btn btn-danger"/>

                    <asp:Label ID="lblResultado" runat="server" ForeColor="Red"></asp:Label>

                    <br />
                    <br />


                    <rsweb:ReportViewer ID="rpvClientes" runat="server" Width="100%">
                    </rsweb:ReportViewer>

                   

                </div>

            </div>

        </div>



    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
