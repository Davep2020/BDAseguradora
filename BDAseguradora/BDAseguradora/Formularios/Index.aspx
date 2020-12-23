<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BDAseguradora.Formularios.Index" %>

<!DOCTYPE html>

    <%--Definición de hojas de estilos para todas las páginas--%>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="../CSS/estilos.css" rel="stylesheet" />
   <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../CSS/Admi.css" rel="stylesheet" />
    <link href="../CSS/estilosIndex.css" rel="stylesheet" />

    <script src="../JS/main.js"></script>

            <%--Librerías del mapa--%>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <style>
        .body1{
            background: #ffffff;
        }
    </style>
    <div class="parallax newsletter">
        <div class="contenido contenedor">
                            <header class="site-header inicio ">
                <div class="contenedor contenido-header">
                    <div class="barra">
                        <a href="Index.aspx">
                            <img src="/IMG/Logo.png" alt="Logotipo">
                        </a>

                        <nav class="">
                            <a href="#"></a>
                            <a href="#"></a>
                            <a href="#"></a>
                            <a href="#"></a>
                        </nav>
                    </div>

                <div class="contenedor-hero contenido-hero">
                            <h3>Seguros ****</h3>
                            <p>Seguros /****, la mejor opción de seguros</p>
                            <a href="/Formularios/Login.aspx" class="boton boton-rojo">Iniciar Sesión</a>
                        </div>
        </div><!-- Contenedor -->
                </header>
        </div>
    </div>


    <div class="container">
        <h2>Servicios</h2>
        
        <div class="card-group">
          <div class="card card-jump">
              <p class="icono"><i class="fa fa-home fa-fw"></i></p>
            <div class="card-body">
              <h5 class="card-title">Hogar</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
          </div>
          <div class="card card-jump">
            <p class="icono"><i class="fa fa-car fa-fw"></i></p>
            <div class="card-body">
              <h5 class="card-title">Autos</h5>
              <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
            </div>
          </div>
          <div class="card card-jump">
            <p class="icono"><i class="fa fa-plane fa-fw"></i></p>
            <div class="card-body">
              <h5 class="card-title">Viajes</h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
            </div>
          </div>
        </div>
     </div>


    <div class="container">
        <h2>Ubicación</h2>
        <div id="mapa" class="mapa"></div>
    </div>


    <h2>A</h2>
    <div class="newsletter-two parallax-two">
    <div class="contenido container">
      <p>Asegura tu futuro</p>
      <h3>Aseguradora</h3>
      <a href="/Formularios/Login.aspx" class="button transparente">Iniciar Sesión</a>
    </div>  <!-- Contenido -->
  </div>  <!-- newsletter -->



    <div class="container">
            <h2>Acerca Nosotros</h2>

        <div class="row"> <%--ROW--%> 
            <div class="col"><%--Primera sección--%>
                <div class="card text-white bg-dark mb-3" style="max-width: 540px;">
                    <div class="row no-gutters">
                        <div class="col-md-4">
                            <img src="/IMG/Logo.png" class="card-img" alt="...">
                        </div>
                        <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Aseguradora</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                        </div>
                    </div>
                </div>

            </div>  <%-- FIN Primera sección--%>

            <div class="card text-white bg-danger mb-3 aux" style="max-width: 18rem;">
              <div class="card-header">Datos</div>
               <div class="card-body">
                 <p class="card-text">Correo: Aseguradora@gmail.com</p>
                   <p class="card-text">Teléfono: Aseguradora@gmail.com</p>
                 <p class="card-text">Facebook: Aseguradora</p>
               </div>
            </div>
        </div><%--ROW--%>


    </div> <%--Contenedor--%>
    </form>
</body>
</html>
