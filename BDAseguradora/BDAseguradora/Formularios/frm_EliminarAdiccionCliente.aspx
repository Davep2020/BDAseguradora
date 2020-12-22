<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_EliminarAdiccionCliente.aspx.cs" Inherits="BDAseguradora.Formularios.frm_EliminarAdiccionCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/estilosRegistro&Consulta_Clientes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="form11" runat="server">

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
                   <h2 style="text-align: center;margin-bottom:25px;">Eliminación de Adicciones de un cliente</h2>
                  <div class="container">

                  <div class="row justify-content-around">
                          <div class="form-group">
                              <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula" style="text-align:center;"></asp:Label>
                              <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rqvCedula" Display="None" runat="server" 
                              ControlToValidate="txtCedula" ErrorMessage="Debe ingresar un número de cédula."></asp:RequiredFieldValidator>
                          <asp:ValidationSummary ID="vsCedula" ShowMessageBox="true" runat="server"  ShowSummary="false"/>
                          <asp:CompareValidator ID="cmptxtCedula" runat="server" ErrorMessage="Debe digitar números en la cédula, sin espacios ni guiones"
                              ControlToValidate="txtCedula" Operator="DataTypeCheck" Type="Integer" Display="None" ></asp:CompareValidator>
                          </div>

                      <div class="form-group">
                               <asp:Label ID="lblAdiccion" runat="server" Text="Adicción" ></asp:Label>
                          <br />
                          <asp:DropDownList ID="ddlAdiccion" runat="server"  DataTextField="Nombre_Ad" DataValueField="Codigo_Ad" Enabled="false"></asp:DropDownList>
                      <asp:RequiredFieldValidator ID="rqvAdiccion" runat="server" 
                          ErrorMessage="Debe seleccionar una adicción" Display="None" ControlToValidate="ddlAdiccion"></asp:RequiredFieldValidator>
                       </div>
                           <asp:Button ID="btnEliminarAdicción" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminarAdicción_Click"  />
                  </div>

                      <div style="margin-bottom:390px"></div>

                 </div><%--Contenedor--%>
            </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
