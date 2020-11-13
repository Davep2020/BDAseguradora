<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Polizas.aspx.cs" Inherits="BDAseguradora.Formularios.Polizas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <form id="frm_Polizas" runat="server">
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
                        <li class="nav-item">
                            <a class="nav-link uno" href="#" data-toggle="modal" data-target="#Agregar">Agregar Cobertura</a>
                            <!-- The Modal -->

                            <div class="modal fade" id="Agregar">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4>Agregar Cobertura</h4>
                                            <button type="button" class="close" data-dismiss="modal">×</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body contaier">
                                            <div class="col-3">
                                                <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
                                                <asp:TextBox ID="txtNombreCober" runat="server"></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server" Text="Descripcion: "></asp:Label>
                                                <textarea id="txtADescrip" runat="server" cols="30" rows="2"></textarea>
                                                <asp:Label ID="Label3" runat="server" Text="Porcentaje: "></asp:Label>
                                                <asp:TextBox ID="txtPorcentaje" runat="server"></asp:TextBox>
                                                

                                            </div>

                                        </div>
                                        <asp:Button ID="btnCobertura" runat="server" Text="Agregar" OnClick="btnCobertura_Click"/>
                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </li>


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
