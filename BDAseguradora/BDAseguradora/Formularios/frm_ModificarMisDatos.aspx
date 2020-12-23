<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ModificarMisDatos.aspx.cs" Inherits="BDAseguradora.Formularios.frm_ModificarMisDatos" %>

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
<body class="body1 body" >
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
                        ¿Estas Seguro en Cerrar Sesión?
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
                        <a class="nav-link" href=".aspx">Reporte Adicciones <i class="fa fa-list fa-fw"></i></a>
                    </li>
                    <li class="nav-item uno">
                        <a class="nav-link" href=".aspx">Reporte Polizas<i class="fa fa-shield  fa-fw"></i></a>
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
        </nav>
        <!-- Modal -->

        <div style="background-color:#a5a5a5; opacity:0.9; padding-bottom:185px;">
         <h2  style="text-align: center;margin-bottom:25px;">Modifica tus Datos Personales</h2>

        <div class="container">
            <div class="row justify-content-around">
                <div class="form-group mr10">
                    <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula" ></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvCedula" Display="None" runat="server" 
                    ControlToValidate="txtCedula" ErrorMessage="Debe ingresar un número de cédula."></asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="vsCedula" ShowMessageBox="true" runat="server"  ShowSummary="false"/>
                    <asp:CompareValidator ID="cmptxtCedula" runat="server" ErrorMessage="Debe digitar números en la cédula, sin espacios ni guiones"
                    ControlToValidate="txtCedula" Operator="DataTypeCheck" Type="Integer" Display="None" ></asp:CompareValidator>
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
            </div>

            <div class="row justify-content-around">
                <div class="form-group">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar el primer apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTxtSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar el segundo apellido" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>



            <div class="row justify-content-around">
                <div class="form-group"> 
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo Eléctronico" ></asp:Label>                 
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvCorreo" runat="server"  ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
               
                    <asp:RegularExpressionValidator ID="regtxtCorreo" runat="server" ErrorMessage="Debe ingresar un correo electrónico válido"
                        ControlToValidate="txtCorreo" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblTelefono1" runat="server" Text="Teléfono 1"></asp:Label>
                    <asp:TextBox ID="txtTelefono1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTelefono1" runat="server" ControlToValidate="txtTelefono1" CssClass="form-control" ErrorMessage="Debe ingresar el teléfono principal" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTelefono2" runat="server" Text="Teléfono 2"></asp:Label>
                    <asp:TextBox ID="txtTelefono2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            

            <div class="row justify-content-around">
                <div class="col-4">
                    <div class="form-group">
                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la direccion" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-group ">
                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia" CssClass="form-control mt-10"></asp:Label>
                        <asp:DropDownList ID="ddlProvincia" runat="server"  DataTextField="Nombre_Prv" DataValueField="ID_Provincia_Prv" class="ddlAd"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqvProvincia" runat="server" 
                        ErrorMessage="Debe seleccionar una provincia" Display="None" ControlToValidate="ddlProvincia"></asp:RequiredFieldValidator>
                    </div>

                </div>

            </div>

            <div class="row ">
                <div class="col align-self-end">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar mis datos" class="btn boton btn-danger" OnClick="btnModificar_Click" />

                </div>
            </div>



            </div>
         </div>
    </form>
</body>
</html>
