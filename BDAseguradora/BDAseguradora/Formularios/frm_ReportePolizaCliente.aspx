<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ReportePolizaCliente.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ReportePolizaCliente" %>
 <%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
   
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scmReporteClientes" runat="server"></asp:ScriptManager>
        <div>
            <h1 class="auto-style1">Reporte de Clientes</h1>
            <p>Buscar por</p>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
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
