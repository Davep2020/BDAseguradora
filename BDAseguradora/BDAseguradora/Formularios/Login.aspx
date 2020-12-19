<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BDAseguradora.Formularios.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../CSS/estilos.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body class="body1">
    <form id="form1" runat="server">
        <div class="contenedor-form">
            <div class="toggle">
                <span style="display:none">Aseguradora</span>
            </div>

            <div class="formulario">
                <img src="/IMG/Logo.png" alt="Logotipo" align="left" id="Logos" width="10%"/>
                <br />
                <h2 >Iniciar Sesión</h2>
                <asp:TextBox ID="txtUsua" placeholder="Usuario" runat="server" required></asp:TextBox>
               <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control" placeholder="Contraseña" runat="server" required></asp:TextBox>
                <asp:Button ID="btnIniciar" runat="server" Text="Iniciar Sesion" OnClick="btnIniciar_Click" />

            </div>
    <asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label>

        </div>
    </form>

</body>
</html>
