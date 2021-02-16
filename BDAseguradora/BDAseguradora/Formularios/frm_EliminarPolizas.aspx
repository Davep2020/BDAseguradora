<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_EliminarPolizas.aspx.cs" Inherits="BDAseguradora.Formularios.frm_EliminarPolizas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
        <form id="frm_Poliza" runat="server">
        <%-- Creacion del NAV --%>
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
                <div class="col-sm-6 Primero ml-3 mr-5">
                    <h1>Eliminar Poliza</h1>

                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Cobertura: "></asp:Label>
                        <asp:TextBox ID="txtCobertura" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Cedula: "></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" Enabled="False"></asp:TextBox>
                        <div style="margin-bottom:10px;"></div>
                        <asp:Label ID="Label3" runat="server" Text="Monto Asegurado: "></asp:Label>
                        <asp:TextBox ID="txtMonto" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Cantidad de Adicciones: "></asp:Label>
                        <asp:TextBox ID="txtCantidad" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Monto de las Adicciones: "></asp:Label>
                        <asp:TextBox ID="txtAmont" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="Prima: "></asp:Label>
                        <asp:TextBox ID="txtPrima" runat="server" Enabled="False"></asp:TextBox> 
                        <div style="margin-bottom:10px;"></div>
                        <asp:Label ID="Label7" runat="server" Text="Impuestos: "></asp:Label>
                        <asp:TextBox ID="txtImpu" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="Monto Final: "></asp:Label>
                        <asp:TextBox ID="txtMontoFin" runat="server" Enabled="False"></asp:TextBox>
                        <div style="margin-bottom:10px;"></div>
                        <asp:Label ID="Label9" runat="server" Text="Vencimiento: "></asp:Label>
                        <asp:TextBox ID="txtVencim" runat="server" Enabled="False"></asp:TextBox>
                        
                        <asp:HiddenField ID="hdiId" runat="server" />
                        
                        <asp:Label ID="lblmensaje" CssClass="alert-info" runat="server" Width="500px"></asp:Label>
                    </div>

                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-danger" />
                    <asp:HyperLink ID="hpRegresar" runat="server" CssClass="text-info" NavigateUrl="~/Formularios/frm_ConsultarPoliza.aspx">Regresar a la lista</asp:HyperLink>
                </div>

            </div>

        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
