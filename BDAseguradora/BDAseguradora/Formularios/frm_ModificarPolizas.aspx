<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ModificarPolizas.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ModificarPolizas" %>
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
                <div class="col-sm-6 Primero ml-3 mr-5 mb-5 ">
                    <h1>Modificar Póliza</h1>

                    <div>
                         <asp:Label ID="Label2" runat="server" Text="Cedula: "></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" type="number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvtxtCedula" runat="server" ErrorMessage="Requiere ingresar el numero de cedula" Display="None" ControlToValidate="txtCedula"></asp:RequiredFieldValidator>

                        <asp:Label ID="Label1" runat="server" Text="Coberturas: "></asp:Label>
                        <asp:DropDownList ID="ddCobertura" runat="server" DataTextField="Nombre_Dpl" DataValueField="ID_DPoliza_Dpl"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqvddCobertura" runat="server" ErrorMessage="Requiere Seleccionar una cobertura" Display="None" ControlToValidate="ddCobertura"></asp:RequiredFieldValidator>
                        <div style="margin-bottom:10px;"></div>
                       
                        <asp:Label ID="Label3" runat="server" Text="Monto: "></asp:Label>
                        <asp:TextBox ID="txtMonto" runat="server" type="number" min="1000000" max="100000000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvtxtMonto" runat="server" ErrorMessage="Requiere ingresar un monto de 1,000,000 ó 100,000,000" Display="None" ControlToValidate="txtMonto"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label4" runat="server" Text="Fecha de vencimiento: "></asp:Label>
                        <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvtxtFecha" runat="server" ErrorMessage="Seleccionar la fecha" Display="None" ControlToValidate="txtFecha"></asp:RequiredFieldValidator>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
                         <asp:Label ID="lblmensaje" CssClass="alert-info" runat="server" Width="500px"></asp:Label>
                        <asp:HiddenField ID="hdiId" runat="server" />
                        

                    </div>

                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" cssClass="btn btn-danger"/>
                    <asp:HyperLink ID="hpRegresar" runat="server" CssClass="text-info" NavigateUrl="~/Formularios/frm_ConsultarPoliza.aspx">Regresar a la lista</asp:HyperLink>
                </div>

            </div>

        </div>
    </form>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
