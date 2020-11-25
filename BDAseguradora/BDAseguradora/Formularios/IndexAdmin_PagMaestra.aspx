<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="IndexAdmin_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.IndexAdmin_PagMaestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Aseguradora</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
 



    <div class="container-fluid" style="margin-top: 30px">
        <div class="row mb-2">
            <div class="col-sm-4 Primero ml-3 mr-5">
                <h2>About Me</h2>
                <h5>Photo of me:</h5>
                <div>
                    <img src="../IMG/Usuario.png" alt="Logotipo" width="33%" />
                </div>
                <asp:Label ID="lblNombre" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <h3>Mantenimientos</h3>
                <p>Cambios en diferentes sectores</p>
                <ul class="nav nav-pills flex-column">
                    <li class="nav-item">
                        <a class="nav-link uno" href="#">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link uno" href="#">Adicciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link uno" href="#">Adicciones por cliente</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link uno" href="frm_ReportePolizaCliente.aspx">Reportes</a>
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
                            <img src="../IMG/Carro.jpg"  alt="Poliza Automovil" width="1100" height="500">
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
