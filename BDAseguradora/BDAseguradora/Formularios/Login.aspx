<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BDAseguradora.Formularios.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../CSS/estilos.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor-form">
            <div class="toggle">
                <span>Crear Cuenta</span>
            </div>

            <div class="formulario">
                <h2>Iniciar Sesión</h2>

                <input type="text" placeholder="Usuario" required />
                <input type="password" placeholder="Contraseña" required />
                <input type="submit" value="Iniciar Sesión" />

            </div>

            <div class="formulario">
                <h2>Crea tu Cuenta</h2>

                <input type="text" placeholder="Usuario" required />

                <input type="password" placeholder="Contraseña" required />

                <input type="email" placeholder="Correo Electronico" required />

                <input type="text" placeholder="Teléfono" required />

                <input type="submit" value="Registrarse" />

            </div>
            <div class="reset-password">
                <a href="#">Olvide mi Contraseña?</a>
            </div>
        </div>
    </form>
    <script src="../JS/jquery-3.1.1.min.js"></script>
    <script src="../JS/main.js"></script>
</body>
</html>
