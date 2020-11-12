<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_RegistroClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes_PagMaestra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
     <form id="frmClienteInserta" runat="server" > 
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item uno">
                    <a class="nav-link" href="frm_RegistroClientes_PagMaestra.aspx">Registrar usuario <i class="fa fa-user fa-fw"></i></a>
                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="#">Polizas <i class="fa fa-shield  fa-fw"></i></a>
                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="frm_AgregarAdiccionXC_PagMaestra.aspx">Adicciones <i class="fa fa-book  fa-fw"></i></a>
                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="frm_ListaClientes_PagMaestra.aspx">Buscar <i class="fa fa-search  fa-fw"></i></a>
                </li>
            </ul>
        </div>
        <div class="mx-auto order-0">

            <a class="navbar-brand mx-auto" href="#">
                <img src="../IMG/Logo.png" alt="Logotipo" style="margin-right: 6%" width="33%" />Aseguradora</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                <span class="navbar-toggler-icon"></span>
            </button>

        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item uno">
                    <a class="nav-link" href="IndexAdmin_PagMaestra.aspx">Home<i class="fa fa-home fa-fw"></i></a>

                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="#">Cerrar Sesion <i class="fa fa-sign-out fa-fw"></i></a>
                </li>
            </ul>
        </div>
    </nav>



         <h2>Registro de Clientes</h2>

        <div class="container">
            <div class="col-3">
                <div class="form-group">
                      <asp:Label ID="lblCedula" runat="server" Text="Cédula" ></asp:Label>
                      <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rvCedula" runat="server" ControlToValidate="txtCedula" CssClass="form-control" ErrorMessage="Debe ingresar la cédula" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                  <asp:Label ID="lblGenero" runat="server" Text="Género" ></asp:Label>      
                  <asp:TextBox ID="txtGenero" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rvGenero" runat="server"  ControlToValidate="txtGenero" ErrorMessage="Seleccione el género" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
              </div >


              <div class="form-group">
                  <asp:Label ID="lblFecha_Nacimiento" runat="server" Text="Fecha Nacimiento" ></asp:Label>
                  <asp:TextBox ID="txtFecha_Nacimiento" runat="server" CssClass="form-control"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rvFecha_Nacimiento" runat="server" ControlToValidate="txtFecha_Nacimiento" CssClass="form-control" ErrorMessage="Debe ingresar la fecha de nacimiento" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
              </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre" ></asp:Label>      
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvNombre" runat="server"  ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                        <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido" ></asp:Label>      
                        <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server"  ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                       <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido" ></asp:Label>                 
                       <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rqvTxtSegundoApellido" runat="server"  ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar el segundo apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="col-3">
                <div class="form-group"> 
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico" ></asp:Label>                 
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvCorreo" runat="server"  ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
               
                <div class="form-group">
                       <asp:Label ID="lblTelefono1" runat="server" Text="Teléfono 1" ></asp:Label>
                       <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rqvTelefono1" runat="server" ControlToValidate="txtTelefono1" CssClass="form-control" ErrorMessage="Debe ingresar el teléfono principal" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group"> 
                        <asp:Label ID="lblTelefono2" runat="server" Text="Teléfono 2" ></asp:Label>
                        <asp:TextBox ID="txtTelefono2" runat="server" CssClass="form-control"></asp:TextBox>
                </div> 
            </div>

            <div class="col-3"> 
            <div class="form-group">
                       <asp:Label ID="lblDireccion" runat="server" Text="Dirección" ></asp:Label>                 
                       <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control "></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rvDireccion" runat="server"  ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
             </div>
            <asp:Button ID="btnAgregar" Text="Agregar" runat="server" CssClass=" btn boton" OnClick="btnAgregar_Click" />

        </div>

        </div><%--Contenedor--%>

         <div style="margin-bottom:250px"></div>

        





</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
