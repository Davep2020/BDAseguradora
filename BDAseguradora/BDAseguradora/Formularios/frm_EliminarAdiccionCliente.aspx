<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_EliminarAdiccionCliente.aspx.cs" Inherits="BDAseguradora.Formularios.frm_EliminarAdiccionCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
     <h2 >Eliminación de Adicciones de un cliente</h2>
    <div class="container">

    <div class="col-3">
            <div class="form-group">
                <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula" ></asp:Label>
                <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvCedula" Display="None" runat="server" 
                ControlToValidate="txtCedula" ErrorMessage="Debe ingresar un número de cédula."></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="vsCedula" ShowMessageBox="true" runat="server"  ShowSummary="false"/>
            <asp:CompareValidator ID="cmptxtCedula" runat="server" ErrorMessage="Debe digitar números en la cédula, sin espacios ni guiones"
                ControlToValidate="txtCedula" Operator="DataTypeCheck" Type="Integer" Display="None" ></asp:CompareValidator>
            </div>

        <div class="form-group">
                 <asp:Label ID="lblAdiccion" runat="server" Text="Adicción" CssClass="form-control"></asp:Label>
            <asp:DropDownList ID="ddlAdiccion" runat="server"  DataTextField="Nombre_Ad" DataValueField="Codigo_Ad" ></asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqvAdiccion" runat="server" 
            ErrorMessage="Debe seleccionar una adicción" Display="None" ControlToValidate="ddlAdiccion"></asp:RequiredFieldValidator>
         </div>
             <asp:Button ID="btnEliminarAdicción" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminarAdicción_Click"  />
    </div>

        <div class="mb-500"></div>

   </div><%--Contenedor--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
