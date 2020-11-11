<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_Registro_ConsulaCliente_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.frm_Registro_ConsulaCliente_PagMaestra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">

<form id="frmClienteInserta" runat="server" > 

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
        </div><%--Fin 3 columnas--%>

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
        </div> <%--Fin 3 columnas--%>
    
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
        </div> <%--Contenedor--%>
    
        <div class="col-3"> 
            <div class="form-group">
                       <asp:Label ID="lblDireccion" runat="server" Text="Dirección" ></asp:Label>                 
                       <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control longitud"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rvDireccion" runat="server"  ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
             </div>

            <asp:Button ID="btnAgregarUsuario" runat="server" Text="Agregar" class="btn boton" OnClick="btnAgregarUsuario_Click"/>

        </div> <%--Contenedor--%>
    
</div> <%--Contenedor--%>


        <div Class="b-100px"></div>

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
                 <asp:TextBox ID="txtAdiccion" runat="server" CssClass="form-control longitud"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rvAdiccion" runat="server" ControlToValidate="txtAdiccion" CssClass="form-control" ErrorMessage="Debe ingresar la cédula del usuario que quiere agregarle addicciones" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                 
         </div>
             <asp:Button ID="btnAgregarAdicción" runat="server" Text="Agregar" class="btn boton" OnClick="btnAgregarAdicción_Click"/>
    </div>

   </div><%--Contenedor--%>
    <div Class="b-100px"></div>

        <h2>Búsqueda de clientes</h2>
    <div class="container">
        <div class="col-3">
            <div class="form-group">
                <asp:Label ID="lblPrimerApellidoBuscar" runat="server" Text="Primer Apellido" ></asp:Label>
                <asp:TextBox ID="txtPrimerApellidoBuscar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblNombreBuscar" runat="server" Text="Nombre" ></asp:Label>
                <asp:TextBox ID="txtNombreBuscar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="btnBuscarCliente" Text="Buscar" runat="server" class="btn boton" OnClick="btnBuscarCliente_Click" />
        </div>
    </div>



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

</form>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
