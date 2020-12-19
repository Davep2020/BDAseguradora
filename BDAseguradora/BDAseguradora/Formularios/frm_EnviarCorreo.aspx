<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_EnviarCorreo.aspx.cs" Inherits="BDAseguradora.Formularios.frm_EnviarCorreo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frm_Poliza" runat="server">
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
        <%-- Creacion del NAV --%>
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
                <div class="col-sm-6 Primero ml-3 mr-5 mb-5">


                    <div class="col-3">
                        <h1>Enviar Correo</h1>
                        <asp:Label ID="Label1" runat="server" Text="Correo: "></asp:Label>
                        <asp:TextBox ID="txtCorreo" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
                        <asp:TextBox ID="txtContraseña" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Fecha de creación: "></asp:Label>
                        <asp:TextBox ID="txtFecha" runat="server" Enabled="False"></asp:TextBox>
                        <asp:TextBox ID="txtDatos" runat="server" Visible="false"></asp:TextBox>
                        <asp:HiddenField ID="hdiId" runat="server" />
                        <asp:Label ID="lblmensaje" CssClass="alert-info" runat="server" Width="500px"></asp:Label>

                    </div>

                    <asp:Button ID="btnCorreo" runat="server" Text="Enviar" OnClick="btnCorreo_Click" />
                    <asp:HyperLink ID="hpRegresar" runat="server" CssClass="text-info" NavigateUrl="~/Formularios/frm_ListaClientes_PagMaestra.aspx">Regresar a la lista</asp:HyperLink>
                </div>

            </div>
        </div>


    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
