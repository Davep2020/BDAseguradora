<<<<<<< HEAD
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_Registro_ConsulaCliente_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_Registro_ConsulaCliente_PagMaestra" %>

=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_RegistroClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes_PagMaestra" %>
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_RegistroClientes_PagMaestra.aspx
=======
<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="~/Formularios/frm_RegistroClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes_PagMaestra" %>
>>>>>>> cf641cb336984e077c75bfc7ba24e0fb9d2854e5
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
     <form id="frmClienteInserta" runat="server" > 

         <h2>Registro de Clientes</h2>

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
            <%--Fin 3 columnas--%>


            <div class="col-3">
                <div class="form-group"> 
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico" ></asp:Label>                 
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" OnTextChanged="txtCorreo_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvCorreo" runat="server"  ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
               
                    <asp:RegularExpressionValidator ID="regtxtCorreo" runat="server" ErrorMessage="Debe ingresar un correo electrónico válido"
                        ControlToValidate="txtCorreo" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblTelefono1" runat="server" Text="Teléfono 1"></asp:Label>
                    <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTelefono1" runat="server" ControlToValidate="txtTelefono1" CssClass="form-control" ErrorMessage="Debe ingresar el teléfono principal" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
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

                <asp:Button ID="btnAgregarUsuario" runat="server" Text="Agregar" class="btn boton" />

            </div>
            <%--Contenedor--%>
        </div>
        <%--Contenedor--%>


        <div class="b-100px"></div>

        

         <div style="margin-bottom:250px"></div>


</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
