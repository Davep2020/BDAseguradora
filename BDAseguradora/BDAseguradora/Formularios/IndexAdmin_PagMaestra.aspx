<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="IndexAdmin_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.IndexAdmin_PagMaestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Aseguradora</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <%-- Creacion del NAV --%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item uno">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="#">Polizas</a>
                </li>

            </ul>
        </div>
        <div class="mx-auto order-0">

            <a class="navbar-brand mx-auto" href="#">
                <img src="../IMG/Logo.png" alt="Logotipo" style="margin-right: 6%" width="33%" />Aseguradora</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                <span class="navbar-toggler-icon"></span>
            </button>

        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item uno">
                    <a class="nav-link" href="#">Registrar Usuario</a>
                </li>
                <li class="nav-item uno">
                    <a class="nav-link" href="#">Cerrar Sesion</a>
                </li>
            </ul>
        </div>
    </nav>



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
                <p> Cambios en diferentes sectores</p>
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
                        <a class="nav-link uno" href="#">Reportes</a>
                    </li>
                  
                </ul>
                <hr class="d-sm-none">
            </div>
            <div class="col-sm-7 Primero ml-4 ">
                <h2>Polizas</h2>
                <h5>Title description, Dec 7, 2017</h5>
                <div class="fakeimg">Fake Image</div>
                <p>Some text..</p>
                <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                <br>
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
