<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_AgregarAdiccionXC_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_AgregarAdiccionXC_PagMaestra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frmIngresaAdiccion" runat="server">
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


        <h2 >Registro de Adicciones por el número de cédula del clientes</h2>
    <div class="container">

    <div class="col-3">
         <div class="form-group">
                 <asp:Label ID="lblCedulaAdiccion" runat="server" Text="Cédula" ></asp:Label>
                 <asp:TextBox ID="txtCedulaAdiccion" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rvCedulaAdiccion" runat="server" ControlToValidate="txtCedulaAdiccion" CssClass="form-control" ErrorMessage="Debe ingresar la cédula del usuario que quiere agregarle addicciones" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
                 <asp:Label ID="lblAdiccion" runat="server" Text="Adicción" ></asp:Label>
                 <asp:TextBox ID="txtAdiccion" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rvAdiccion" runat="server" ControlToValidate="txtAdiccion" CssClass="form-control" ErrorMessage="Debe ingresar la cédula del usuario que quiere agregarle addicciones" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                 
         </div>
             <asp:Button ID="btnAgregarAdicción" runat="server" Text="Agregar" CssClass="btn boton"/>
    </div>

   </div><%--Contenedor--%>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
