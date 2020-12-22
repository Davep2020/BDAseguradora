<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_RegistroClientes_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes_PagMaestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" ConteID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
     <form id="frmClienteInserta" runat="server" > 

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

         <div style="background-color:#a5a5a5; opacity:0.9; padding-bottom:1px;">
         <h2 style="text-align: center;margin-bottom:25px;">Registro de Clientes</h2>

        <div class="container">
            <div class="row justify-content-around">
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

            <div class="row justify-content-around">
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


            <div class="row justify-content-around">
                <div class="form-group"> 
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico" ></asp:Label>                 
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" ></asp:TextBox>
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

            <div class="row justify-content-around">
                <div class="form-group">
                    <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group ">
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"  style="margin-right:150px"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlProvincia" runat="server"  DataTextField="Nombre_Prv" DataValueField="ID_Provincia_Prv" class="ddlAd"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqvProvincia" runat="server" 
                    ErrorMessage="Debe seleccionar una provincia" Display="None" ControlToValidate="ddlProvincia"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblTipoPersona" runat="server" Text="Tipo Persona" style="padding-right:150px"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlTipoPersona" runat="server"  DataTextField="Tipo_Tp" DataValueField="ID_TipoPersona_Tp" Cssclass="ddlAd"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqvTipoPersona" runat="server" 
                    ErrorMessage="Debe seleccionar un tipo de cliente" Display="None" ControlToValidate="ddlTipoPersona"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--Contenedor--%>
            <div class="row justify-content-start">
                
                <asp:Button ID="btnAgregarUsuario" runat="server" Text="Agregar" class="btn boton btn-danger" OnClick="btnAgregarUsuario_Click" />

            </div>
        <%--Contenedor--%>
        </div>

        <div class="b-100px"></div>

        

         <div style="margin-bottom:250px"></div>
         </div>

</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
