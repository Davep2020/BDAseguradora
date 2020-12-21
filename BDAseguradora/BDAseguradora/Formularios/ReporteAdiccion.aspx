<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ReporteAdiccion.aspx.cs" Inherits="BDAseguradora.Formularios.ReporteAdiccion" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form runat="server" id="form11">
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

        <div style="background-color:#a5a5a5; opacity:0.9; padding-bottom:1px;">
                <div>
                    <h1 class="auto-style1">Reporte de adicciones</h1>
                    <H2 style="text-align: center;margin-bottom:25px;">Buscar por</H2>
                </div>
                <div class="container">
                    <div class="row justify-content-around">

                         <div>
                             <asp:Label Text="Nombre: " runat="server" />
                             <asp:TextBox runat="server" id="txtNombre"/>
                             
                         </div>
                         <div>
                             <asp:Label Text="Cédula: " runat="server" />
                             <asp:TextBox runat="server" id="txtCedula"/>
                             
                         </div>
                         <div>
                             <asp:Label Text="Código Adicción: " runat="server" />
                             <asp:TextBox runat="server" id="txtCodigo"/>
                         </div>

                    </div>
                    <br />
                    <div class="row justify-content-around">

                        <div>
                            <asp:Label Text="Nombre adicción: " runat="server" />
                            <asp:TextBox runat="server" id="txtNombreAdiccion"/>
                        </div>

                        <div>
                            <asp:Button Text="Buscar" ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" CssClass="btn badge-danger" />
                        </div>

                        <div>
                            <asp:Label Text="" ID="lblMensaje" runat="server" />
                        </div>
                    </div>
                </div>
            <br />
        </div>
        <br />

        <asp:ValidationSummary ID="vsAdiccion" runat="server" />


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="rpvAdicciones" runat="server" Width="100%">
        </rsweb:ReportViewer>

        <br />
        <br />
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
