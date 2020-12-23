<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="IndexAdmin_PagMaestra.aspx.cs" Inherits="BDAseguradora.Formularios.IndexAdmin_PagMaestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Aseguradora</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="EXPIRES" CONTENT="0">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoPrincipal" runat="server">
           <%-- Codigo del modal de cerrar sesion --%>

    <form runat="server"> 
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
        <%-- Creacion del NAV --%>
        <div class="container-fluid" style="margin-top: 30px">
            <div class="row mb-2">
                <div class="col-sm-4 Primero ml-3 mr-5">
                    <h1>Bienvenido</h1>
                    <asp:Label ID="lblNombre" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Usted ingresó por última vez:" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="lblFecha" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <h3>Mantenimientos</h3>
                    <p>Cambios en diferentes sectores</p>
                    <ul class="nav nav-pills flex-column">

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_RegistroClientes_PagMaestra.aspx">Agregar Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ListaClientes_PagMaestra.aspx">Consultar Cliente</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_AgregarAdiccionXC_PagMaestra.aspx">Agregar Adicciones Clientes</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link uno" href="frm_ReportePolizaCliente.aspx">Reporte Póliza Cliente</a>
                        </li>

                             <li class="nav-item">
                            <a class="nav-link uno" href="ReporteAdiccion.aspx">Reporte Adicción Cliente</a>
                        </li>

                    </ul>

                </div>
                <hr class="d-sm-none">
           
            <div class="col-sm-7 Primero ml-4 ">
                <h2 class="Polizas">Pólizas</h2>
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
                                <h3 class="dos">Póliza de Familia</h3>
                                <p class="dos">Manten tu familia asegurada</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="../IMG/Estudiantes.png" alt="Poliza Estudiantil" width="1100" height="500">
                            <div class="carousel-caption">
                                <h3 class="dos">Póliza Estudiantil</h3>
                                <p class="dos">Ten tus hijo asegurados</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="../IMG/Carro.jpg"  alt="Poliza Automovil" width="1100" height="500">
                            <div class="carousel-caption">
                                <h3 class="dos">Póliza Automóvil</h3>
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
          

               </div>
        </div>

    </div>
        <div style="margin-bottom:50px;"></div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsPersonalizados" runat="server">
</asp:Content>
