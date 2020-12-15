﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportePolizaCliente.aspx.cs" Inherits="BDAseguradora.Formularios.ReportePolizaCliente" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
    <META HTTP-EQUIV="EXPIRES" CONTENT="0">
    <%--Definición de hojas de estilos para todas las páginas--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../CSS/Admi.css" rel="stylesheet" />
    <title>Reporte Póliza</title>
</head>
<body class="body1 body">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item uno">
                        <a class="nav-link" href="ReporteAdiccionCliente.aspx">Reporte Adicciones <i class="fa fa-list fa-fw"></i></a>
                    </li>
                    <li class="nav-item uno">
                        <a class="nav-link" href="ReporteAdiccionCliente.aspx">Reporte Polizas<i class="fa fa-shield  fa-fw"></i></a>
                    </li>

                </ul>
            </div>
            <div class="mx-auto order-0">

                <a class="navbar-brand mx-auto">
                    <img src="../IMG/Logo.png" alt="Logotipo" style="margin-right: 6%" width="33%" />Aseguradora</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>

            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item uno">
                        <a class="nav-link" href="frm_ClienteVista.aspx">Home<i class="fa fa-home fa-fw"></i></a>

                    </li>
                    <li class="nav-item uno">
                        <a class="nav-link" href="../Formularios/Login.aspx" data-toggle="modal" data-target="#exampleModal">Cerrar Sesion <i class="fa fa-sign-out fa-fw"></i></a>
                    </li>
                </ul>
            </div>
        </nav><!-- Modal -->

        <asp:Label Text="" ID="lblMensaje" runat="server" />

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <rsweb:ReportViewer ID="rpvAdicciones" runat="server" Width="100%">
        </rsweb:ReportViewer>

        <div style="margin-bottom:117px"></div>


                <!-- Footer -->
            <footer class="container-fluid Tercero">

                 <!-- Copyright -->
                 <div class="footer-copyright text-center py-3">
                     © 2020 Copyright:
                 <a>Aseguradora</a>
                 </div><!-- Copyright -->

            </footer><!-- Footer -->
    </form>
</body>
</html>
