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
        <asp:ScriptManager ID="scmReporteClientes" runat="server"></asp:ScriptManager>
        <div>
            <h1 class="auto-style1">Reporte de Clientes</h1>
            <p>Buscar por</p>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtCedula" runat="server" required></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="btVerReporte" runat="server" OnClick="btBuscar_Click" Text="Ver Reporte" />
     
        <asp:Label ID="lblResultado" runat="server" ForeColor="Red"></asp:Label>

        <br />
        <br />


           <rsweb:ReportViewer ID="rpvClientes" runat="server" Width="100%">
        </rsweb:ReportViewer>

    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
