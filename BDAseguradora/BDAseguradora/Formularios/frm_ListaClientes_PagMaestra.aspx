<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ListaClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ListaClientes_PagMaestra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
    <link href="../CSS/Admi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frmLista" runat="server">
     


        <h2>Búsqueda de clientes</h2>
    <div class="container">
        <div class="col-3">
            <div class="form-group">
                <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula" ></asp:Label>
                <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvCedula" Display="None" runat="server" 
                ControlToValidate="txtCedula" ErrorMessage="Debe ingresar un número de cédula."></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="vsCedula" ShowMessageBox="true" runat="server" ShowSummary="false"/>
            <asp:CompareValidator ID="cmptxtCedula" runat="server" ErrorMessage="Debe digitar números en la cédula, sin espacios ni guiones"
                ControlToValidate="txtCedula" Operator="DataTypeCheck" Type="Integer" Display="None" ></asp:CompareValidator>
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
