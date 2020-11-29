<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_AgregarCobertura.aspx.cs" Inherits="BDAseguradora.Formularios.frm_AgregarCobertura" %>

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
                    <h2>About Me</h2>
                    <h5>Photo of me:</h5>
                    <div>
                        <img src="../IMG/Usuario.png" alt="Logotipo" width="33%" />
                    </div>
                    <p>Some text about me in culpa qui officia deserunt mollit ani</p>
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
                            <a class="nav-link uno" href="frm_RegistroPoliza.aspx">Ingresar Poliza</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ConsultarPoliza.aspx">Consultar Poliza</a>
                        </li>



                    </ul>
                    <hr class="d-sm-none">
                </div>

                <div class="col-sm-7 Primero ml-5 ">
                    <h1>Agregar Cobertura</h1>

                    <div class="col-3">
                        <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
                        <asp:TextBox ID="txtNombreCober" runat="server" required></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Descripcion: "></asp:Label>
                        <textarea id="txtADescrip" runat="server" cols="30" rows="2" required></textarea>
                        <asp:Label ID="Label3" runat="server" Text="Porcentaje: " ></asp:Label>
                        <asp:TextBox ID="txtPorcentaje" runat="server" required></asp:TextBox>
                        <asp:Label ID="lblmensaje" CssClass="alert-info" runat="server" Width="500px"></asp:Label>

                    </div>
                    <asp:Button ID="btnCobertura" runat="server" Text="Agregar" OnClick="btnCobertura_Click1" />
                    
                </div>
                 
            </div>
           
        </div>
    </form>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
