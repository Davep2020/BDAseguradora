<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_ConsultarCobertura.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ConsultarCobertura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frm_Poliza" runat="server">
        <%-- Creacion del NAV --%>
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
        <div class="container-fluid" style="margin-top: 30px">
            <div class="row mb-2">
                <div class="col-sm-4 Primero ml-3 mr-5">
                    <h2>Bienvenido</h2>
                    <asp:Label ID="lblNombre" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <h3>Mantenimientos</h3>
                    <p>Cambios en diferentes sectores</p>
                    <ul class="nav nav-pills flex-column">

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_AgregarCobertura.aspx">Ingresar Cobertura</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ConsultarCobertura.aspx">Consultar Cobertura</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_RegistroPoliza.aspx">Ingresar Póliza</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ConsultarPoliza.aspx">Consultar Póliza</a>
                        </li>



                    </ul>
                </div>




                <hr class="d-sm-none">


                <div class="col-sm-6 Primero  ml-3 mr-5 mb-5 ">

                    <h2 class="Polizas">Consultar Cobertura</h2>


                    <asp:Label ID="Label4" runat="server" Text="Ingrese el nombre de la cobertura: "></asp:Label>
                    <asp:TextBox ID="txtNombreconsu" runat="server"></asp:TextBox>
                    <div style="margin-bottom:20px"></div>
                    <asp:GridView ID="grdConsultarcober" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ID_DPoliza_Dpl" HeaderText="ID" Visible="False" />
                            <asp:BoundField DataField="Nombre_Dpl" HeaderText="Nombre" />
                            <asp:BoundField DataField="Descripción_Dpl" HeaderText="Descripcion" />
                            <asp:BoundField DataField="Porcentaje_Dpl" HeaderText="Porcentaje" />

                            <asp:HyperLinkField DataNavigateUrlFields="ID_DPoliza_Dpl" DataNavigateUrlFormatString="frm_ModificarCobertura.aspx?ID_DPoliza_Dpl={0}" Text="Modificar" />

                            <asp:HyperLinkField DataNavigateUrlFields="ID_DPoliza_Dpl" DataNavigateUrlFormatString="frm_EliminarCobertura.aspx?ID_DPoliza_Dpl={0}" Text="Eliminar" />

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
                    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" style="margin-top:20px;" CssClass="btn btn-danger"/>
                </div>
            </div>
        </div>
        <div style="margin-bottom:148px;"></div>
    </form>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
