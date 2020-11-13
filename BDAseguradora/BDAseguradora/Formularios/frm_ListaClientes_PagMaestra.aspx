<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ListaClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ListaClientes_PagMaestra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
    <link href="../CSS/Admi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frmLista" runat="server">
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


        <h2>Búsqueda de clientes</h2>
    <div class="container">
        <div class="col-3">
            <div class="form-group">
                <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula" ></asp:Label>
                <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvCedula" Display="None" runat="server" 
                ControlToValidate="txtCedula" ErrorMessage="Debe ingresar un número de cédula."></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvCedula" runat="server" ErrorMessage="Tiene que contener 9 digitos."
            ControlToValidate="txtCedula" Display="None"
                 MinimumValue="8" MaximumValue="10" Type="Integer"></asp:RangeValidator>
            <asp:ValidationSummary ID="vsCedula" ShowMessageBox="true" runat="server" />
            </div>


            <asp:Button ID="btnBuscarCliente" Text="Buscar" runat="server" class="btn boton"  OnClick="btnBuscarCliente_Click"/>


        </div>
    </div>
        <div style="margin-bottom:35px"></div>
        <div class="container">

        
            <asp:GridView ID="grdListaClientes" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Primer_Apellido_Dp" HeaderText="Primer Apellido" />
                    <asp:BoundField DataField="Segundo_Apellido_Dp" HeaderText="Segundo Apellido" />
                    <asp:BoundField DataField="Nombre_Dp" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cedula_Dp" HeaderText="Cédula" />
                    <asp:BoundField DataField="Correo_Electrónico_Dp" HeaderText="Email" />
                    <asp:BoundField DataField="Nombre_Prv" HeaderText="Provincia" />
                </Columns>
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

        <div style="margin-bottom: 30px;"></div>

        <asp:GridView ID="grdListaAdicciones" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Codigo_Ad" HeaderText="Código" />
                <asp:BoundField DataField="Nombre_Ad" HeaderText="Adicción" />
            </Columns>
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
        </div><%--Contenedor--%>


        <div style="margin-bottom:420px"></div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
