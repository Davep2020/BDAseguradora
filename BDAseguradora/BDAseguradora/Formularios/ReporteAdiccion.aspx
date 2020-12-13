<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ReporteAdiccion.aspx.cs" Inherits="BDAseguradora.Formularios.ReporteAdiccion" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
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
        </div> <%--Modal--%>


        <div>
            <h1 class="auto-style1">Reporte de adicciones</h1>
            <p>Buscar por</p>
        </div>

    <div>
        <asp:Label Text="Nombre: " runat="server" />
        <asp:TextBox runat="server" id="txtNombre"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="RequiredFieldValidator" Type="Text"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label Text="Cédula: " runat="server" />
        <asp:TextBox runat="server" id="txtCedula"/>
    </div>
    <div>
        <asp:Label Text="Código Adicción: " runat="server" />
        <asp:TextBox runat="server" id="txtCodigo"/>
    </div>
    <div>
        <asp:Label Text="Nombre adicción: " runat="server" />
        <asp:TextBox runat="server" id="txtNombreAdiccion"/>
    </div>

    <div>
        <asp:Button Text="text" ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" />
    </div>

    <div>
        <asp:Label Text="" ID="lblMensaje" runat="server" />
    </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="rpvAdicciones" runat="server" Width="100%">
        </rsweb:ReportViewer>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
