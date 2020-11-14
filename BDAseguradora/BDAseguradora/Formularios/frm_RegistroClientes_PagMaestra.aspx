<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_Registro_ConsulaCliente_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_Registro_ConsulaCliente_PagMaestra" %>

=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_RegistroClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes_PagMaestra" %>
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx
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

<<<<<<< HEAD:BDAseguradora/BDAseguradora/Formularios/frm_Registro_ConsulaCliente_PagMaestra.aspx
    <form id="frmClienteInserta" runat="server">

        <h2>Registro de Clientes</h2>


        <div class="container">
            <div class="col-3">

                <div class="form-group">
                    <asp:Label ID="lblCedula" runat="server" Text="Cédula"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvCedula" runat="server" ControlToValidate="txtCedula" CssClass="form-control" ErrorMessage="Debe ingresar la cédula" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblGenero" runat="server" Text="Género"></asp:Label>
                    <asp:TextBox ID="txtGenero" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvGenero" runat="server" ControlToValidate="txtGenero" ErrorMessage="Seleccione el género" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>


                <div class="form-group">
                    <asp:Label ID="lblFecha_Nacimiento" runat="server" Text="Fecha Nacimiento"></asp:Label>
                    <asp:TextBox ID="txtFecha_Nacimiento" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvFecha_Nacimiento" runat="server" ControlToValidate="txtFecha_Nacimiento" CssClass="form-control" ErrorMessage="Debe ingresar la fecha de nacimiento" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--Fin 3 columnas--%>
=======
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
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx

            <div class="col-3">
                <div class="form-group">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTxtSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar el segundo apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
<<<<<<< HEAD:BDAseguradora/BDAseguradora/Formularios/frm_Registro_ConsulaCliente_PagMaestra.aspx
            <%--Fin 3 columnas--%>

            <div class="col-3">
                <div class="form-group">
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
=======

            <div class="col-3">
                <div class="form-group"> 
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico" ></asp:Label>                 
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvCorreo" runat="server"  ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx
                </div>

                <div class="form-group">
                    <asp:Label ID="lblTelefono1" runat="server" Text="Teléfono 1"></asp:Label>
                    <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTelefono1" runat="server" ControlToValidate="txtTelefono1" CssClass="form-control" ErrorMessage="Debe ingresar el teléfono principal" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
<<<<<<< HEAD:BDAseguradora/BDAseguradora/Formularios/frm_Registro_ConsulaCliente_PagMaestra.aspx
                <div class="form-group">
                    <asp:Label ID="lblTelefono2" runat="server" Text="Teléfono 2"></asp:Label>
                    <asp:TextBox ID="txtTelefono2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <%--Contenedor--%>

            <div class="col-3">
                <div class="form-group">
                    <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control longitud"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="btnAgregarUsuario" runat="server" Text="Agregar" class="btn boton" OnClick="btnAgregarUsuario_Click" />

            </div>
            <%--Contenedor--%>
        </div>
        <%--Contenedor--%>


        <div class="b-100px"></div>

        <h2>Registro de Adicciones por el número de cédula del clientes</h2>
        <div class="container">

            <div class="col-3">
                <div class="form-group">
                    <asp:Label ID="lblCedulaAdiccion" runat="server" Text="Cédula"></asp:Label>
                    <asp:TextBox ID="txtCedulaAdiccion" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvCedulaAdiccion" runat="server" ControlToValidate="txtCedulaAdiccion" CssClass="form-control" ErrorMessage="Debe ingresar la cédula del usuario que quiere agregarle addicciones" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblAdiccion" runat="server" Text="Adicción"></asp:Label>
                    <asp:TextBox ID="txtAdiccion" runat="server" CssClass="form-control longitud"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvAdiccion" runat="server" ControlToValidate="txtAdiccion" CssClass="form-control" ErrorMessage="Debe ingresar la cédula del usuario que quiere agregarle addicciones" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

                </div>
                <asp:Button ID="btnAgregarAdicción" runat="server" Text="Agregar" class="btn boton" OnClick="btnAgregarAdicción_Click" />
            </div>

        </div>
        <%--Contenedor--%>
        <div class="b-100px"></div>

        <h2>Búsqueda de clientes</h2>
        <div class="container">
            <div class="col-3">
                <div class="form-group">
                    <asp:Label ID="lblPrimerApellidoBuscar" runat="server" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox ID="txtPrimerApellidoBuscar" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblNombreBuscar" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombreBuscar" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <asp:Button ID="btnBuscarCliente" Text="Buscar" runat="server" class="btn boton" OnClick="btnBuscarCliente_Click" />
                <asp:GridView ID="grListaClientes" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </div>

=======
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
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx

        



<<<<<<< HEAD:BDAseguradora/BDAseguradora/Formularios/frm_Registro_ConsulaCliente_PagMaestra.aspx
    </form>
=======
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx


</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
