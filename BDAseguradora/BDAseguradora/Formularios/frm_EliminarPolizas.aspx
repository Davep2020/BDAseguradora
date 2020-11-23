<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_EliminarPolizas.aspx.cs" Inherits="BDAseguradora.Formularios.frm_EliminarPolizas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
        <form id="frm_Poliza" runat="server">
        <%-- Creacion del NAV --%>
        <div class="container-fluid" style="margin-top: 30px">
            <div class="row mb-2">
                <div class="col-sm-4 Primero ml-3 mr-5">
                    <h2>About Me</h2>
                    <h5>Photo of me:</h5>
                    <div>
                        <img src="../IMG/Usuario.png" alt="Logotipo" width="33%" />
                    </div>
                    <p>Some text about me in culpa qui officia deserunt mollit ani</p>
                    <h3>Mantenimientos</h3>
                    <p>Cambios en diferentes sectores</p>
                    <ul class="nav nav-pills flex-column">

                    <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink1" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_ConsultarCobertura.aspx">Consultar Cobertura</asp:HyperLink>

                        </li>
                        <br />
                        <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink2" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_AgregarCobertura.aspx">Agregar Cobertura</asp:HyperLink>


                        </li>
                        <br />
                        <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink3" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_ModificarCobertura.aspx">Modificar Cobertura</asp:HyperLink>


                        </li>


                    </ul>
                    <hr class="d-sm-none">
                </div>

                <div class="col-sm-7 Primero ml-5 ">
                    <h1>Modificar Poliza</h1>

                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Cobertura: "></asp:Label>
                        <asp:TextBox ID="txtCobertura" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Cedula: "></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Monto Asegurado: "></asp:Label>
                        <asp:TextBox ID="txtMonto" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Cantidad de Adicciones: "></asp:Label>
                        <asp:TextBox ID="txtCantidad" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Monto de las Adicciones: "></asp:Label>
                        <asp:TextBox ID="txtAmont" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="Prima: "></asp:Label>
                        <asp:TextBox ID="txtPrima" runat="server" Enabled="False"></asp:TextBox> 
                        <asp:Label ID="Label7" runat="server" Text="Impuestos: "></asp:Label>
                        <asp:TextBox ID="txtImpu" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="Monto Final: "></asp:Label>
                        <asp:TextBox ID="txtMontoFin" runat="server" Enabled="False"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="Vencimiento: "></asp:Label>
                        <asp:TextBox ID="txtVencim" runat="server" Enabled="False"></asp:TextBox>
                        
                        <asp:HiddenField ID="hdiId" runat="server" />
                        

                    </div>

                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    <asp:HyperLink ID="hpRegresar" runat="server" CssClass="text-info" NavigateUrl="~/Formularios/frm_ConsultarPoliza.aspx">Regresar a la lista</asp:HyperLink>
                </div>

            </div>

        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
