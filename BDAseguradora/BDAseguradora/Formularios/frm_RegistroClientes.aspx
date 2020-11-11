<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_RegistroClientes.aspx.cs" Inherits="BDAseguradora.Formularios.frm_RegistroClientes" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/estilos.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <title></title>
</head>
<body class="body1">
    <form id="form1" runat="server">
        <div>
            <div class="input-group" style="padding-bottom:10px">
                <div class="input-group-prepend">
                  <span class="input-group-text">Cliente</span>
                </div>

                <asp:TextBox  runat="server" placeholder="Nombre" class="form-control"/>

                <asp:TextBox  runat="server" placeholder="Primer Apellido" class="form-control"/>

                <asp:TextBox  runat="server" placeholder="Segundo Apellido" class="form-control"/>

                <asp:Button Text="Registrar" type="submit" class="btn btn-primary" runat="server" />


            </div>
        </div>
    </form>
</body>
</html>
