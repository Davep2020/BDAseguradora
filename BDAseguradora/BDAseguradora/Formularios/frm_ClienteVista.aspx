<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ClienteVista.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ClienteVista" %>

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


    <script src="../JS/main.js"></script>
    <title></title>
</head>
<body class="body1 body">
    <form id="form1" runat="server">

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
                        ¿Estás Seguro en Cerrar Sesión?
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnNo" runat="server" data-dismiss="modal" Text="No" />
                        <asp:Button ID="btnSi" runat="server" Text="Si" OnClick="btnSi_Click" />

                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item uno">
                        <a class="nav-link" href="ReporteAdiccionCliente.aspx">Reporte Adicciones <i class="fa fa-list fa-fw"></i></a>
                    </li>
                    <li class="nav-item uno">
                        <a class="nav-link" href="ReportePolizaCliente.aspx">Reporte Pólizas<i class="fa fa-shield  fa-fw"></i></a>
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
                        <a class="nav-link" href="frm_ClienteVista.aspx">Inicio<i class="fa fa-home fa-fw"></i></a>

                    </li>
                    <li class="nav-item uno">
                        <a class="nav-link" href="../Formularios/Login.aspx" data-toggle="modal" data-target="#exampleModal">Cerrar Sesión <i class="fa fa-sign-out fa-fw"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- Modal -->



        <div style="margin-bottom:100px"></div>
       


            <asp:GridView ID="grdVistaCliente" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nombre_Dp" HeaderText="Nombre" />
                    <asp:BoundField DataField="Primer_Apellido_Dp" HeaderText="Primer Apellido" />
                    <asp:BoundField DataField="Segundo_Apellido_Dp" HeaderText="Segundo Apellido" />
                    <asp:BoundField DataField="Correo_Electrónico_Dp" HeaderText="Correo" />
                    <asp:BoundField DataField="Cedula_Dp" HeaderText="Cédula" />
                    <asp:BoundField DataField="Genero_DP" HeaderText="Género" />
                    <asp:BoundField DataField="Fecha_nacimiento_Dp" HeaderText="Fecha Nacimiento" />
                    <asp:BoundField DataField="Dirección_Física_Dp" HeaderText="Dirección" />
                    <asp:BoundField DataField="Telefono_Principal_Dp" HeaderText="Teléfono 1°" />
                    <asp:BoundField DataField="Telefono_Secundario_Dp" HeaderText="Teléfono 2°" />
                    <asp:HyperLinkField DataNavigateUrlFields="ID_DPersona_Dp" DataNavigateUrlFormatString="frm_ModificarMisDatos.aspx?ID_DPersona_Dp={0}" Text="Modificar mis datos" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>




        <div class="mb-117" style="margin-bottom:350px"></div>




            <!-- Footer -->
    <footer class="container-fluid Tercero">

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">
            © 2020 Copyright:
    <a>Aseguradora</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->
    </form>
</body>
</html>
