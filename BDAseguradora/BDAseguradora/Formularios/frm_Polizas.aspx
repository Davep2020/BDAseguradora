﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="frm_Polizas.aspx.cs" Inherits="BDAseguradora.Formularios.frm_Polizas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frm_Poliza" runat="server">
        <%-- Creacion del NAV --%>
        <div class="container-fluid" style="margin-top: 30px">
            <div class="row mb-2">
                <div class="col-sm-4 Primero ml-3 mr-5">
                    <h2>About Me</h2>
                    <h5>Photo of me:</h5>
                    <div>
                        <img src="../IMG/Usuario.png" alt="Logotipo" width="33%" />
                    </div>
                    <p>Some text about me in culpa qui officia deserunt mollit ani</p>
                    <h3>Mantenimientos</h3>
                    <p>Cambios en diferentes sectores</p>
                    <ul class="nav nav-pills flex-column">
                        <%-- Agregar Cobertura --%>

                        <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink3" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_ModificarCobertura.aspx">Agregar Poliza</asp:HyperLink>


                        </li>

                        <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink2" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_AgregarCobertura.aspx">Agregar Cobertura</asp:HyperLink>


                        </li>
                        <br />

                        <li class="nav-item uno">
                            <asp:HyperLink ID="HyperLink1" Style="text-decoration: none" runat="server" CssClass="uno" NavigateUrl="~/Formularios/frm_ConsultarCobertura.aspx">Consultar Cobertura</asp:HyperLink>

                        </li>
                        <br />




                    </ul>
                    <hr class="d-sm-none">
                </div>

                <div class="col-sm-7 Primero ml-4 ">

                    <h2 class="Polizas">Polizas</h2>
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../IMG/Familia.jpg" alt="Poliza de Familia" width="1100" height="500">
                                <div class="carousel-caption">
                                    <h3 class="dos">Poliza de Familia</h3>
                                    <p class="dos">Manten tu familia asegurada</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../IMG/Estudiantes.png" alt="Poliza Estudiantil" width="1100" height="500">
                                <div class="carousel-caption">
                                    <h3 class="dos">Poliza Estudiantil</h3>
                                    <p class="dos">Ten tus hijo asegurados</p>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../IMG/Carro.jpg" alt="Poliza Automovil" width="1100" height="500">
                                <div class="carousel-caption">
                                    <h3 class="dos">Poliza Automovil</h3>
                                    <p class="dos">Asegura tu coche</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                    <br />

                    <h2>TITLE HEADING</h2>
                    <h5>Title description, Sep 2, 2017</h5>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Nombre_Dpl" HeaderText="Nombre" />
                            <asp:BoundField DataField="Descripción_Dpl" HeaderText="Descripcion" />
                            <asp:BoundField DataField="Porcentaje_Dpl" HeaderText="Porcentaje" />

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
                    <div class="fakeimg">Fake Image</div>
                    <p>Some text..</p>
                    <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                </div>
            </div>

        </div>
    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>