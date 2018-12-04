<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Comprar.aspx.cs" Inherits="Proyecto_SITE.WebForms.wfrm_Comprar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Como Comprar</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    </head>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Inicio</a>
    <a href="#ProximosEventos" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Proximos Eventos</a>
    <a href="#Nosotros" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Nosotros</a>
       <div class="w3-dropdown-hover w3-hide-small">
        <button class="w3-padding-large w3-button" title="More">Categorías<i class="fa fa-caret-down"></i></button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">Conciertos</a>
        <a href="#" class="w3-bar-item w3-button">Teatro</a>
        <a href="#" class="w3-bar-item w3-button">Deportes</a>
        <a href="#" class="w3-bar-item w3-button">Culturales</a>
      </div>
       </div>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">Ayuda<i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="wfrm_Terminos_y_condiciones.aspx" class="w3-bar-item w3-button">Términos y Condiciones</a>
        <a href="wfrm_Comprar.aspx" class="w3-bar-item w3-button">¿Cómo comprar?</a>
        <a href="wfrm_Retirar.aspx" class="w3-bar-item w3-button">¿Dónde retirar?</a>
        <a href="#Contacto" class="w3-bar-item w3-button">Contacto</a>
      </div>
    </div>
      <div class="w3-right">
          <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Iniciar Sesión</a>
          <a href="Reg_Usuario.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Registrarse</a>   
      </div>    
  </div>
</div>

<!-- Navbar  -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#ProximosEventos" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">ProximosEventos</a>
  <a href="#Nosotros" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Nosotros</a>
  <a href="#Categorías" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Categorías</a>
  <a href="#Ayuda" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Ayuda</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Iniciar Sesión</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">Registrarse</a>   
</div>


  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="Nosotros">
    <h2 class="w3-wide">¿Como Comprar?</h2>
    <p class="w3-justify">Antes de realizar su compra lea atentamente Términos y Condiciones</p>
    <p class="w3-justify">1. Compre su(s) entrada(s) llamando a nuestro Call Center</p>
    <p class="w3-justify">Usted puede comprar su entrada con servicio de entrega a domicilio a través de nuestro Call Center con atención al público en horario de lunes a domingo de 8:00 a.m. a 8:00 p.m. llamando al teléfono 4000-1090.</p>
    <p class="w3-justify">Nuestros operadores le ayudarán a elegir su zona y asiento disponible preferido. Usted puede optar por la modalidad que le sea más cómoda para conseguir una o más entradas (por favor lea atentamente los Términos y Condiciones):</p>
    <p class="w3-justify">a) Si usted desea que la entrada le sea entregada en su domicilio, debe solicitárselo al personal y usted podrá realizar la compra a través de la tarjeta de crédito, débito o efectivo (aplica cargo por entrega).</p>
    <p class="w3-justify">b) Si usted desea retirar la entrada en cualquier de nuestros Puntos de Servicio, el operador le dará un código perteneciente a su compra, este debe ser presentado a la hora de retirar sus entradas, al igual que presentar una identificación.</p>
    <p class="w3-justify">c) En caso de que sea habilitada la opción de realizar la reserva de entrada/s, se le aplicará un cargo de garantía de reserva lo cual le será sucesivamente descontado del total de la transacción en el momento de su definitiva cancelación a realizarse en el mismo punto de venta.</p>
    <p class="w3-justify"><strong>IMPORTANTE:</strong></p>
    <p class="w3-justify">No olvide el código para el retiro de la entrada: éste es el que identificará su entrada comprada o reservada en el momento que usted la retira en uno de nuestros Puntos de Servicio.</p>
    <p class="w3-justify">1. No deje vencer el plazo límite de su reserva, si aplica (generalmente 96 horas después de haber recibido la confirmación). En el caso de vencimiento usted pierde la validez de la reserva y el cargo por garantía.</p>
    <p class="w3-justify">2. Compre su(s) entrada(s) o resérvela(s) (si estuviese disponible esta modalidad) a través de nuestro sitio en Internet Specialticket.net (aplica cargo por servicio). Lea atentamente nuestros Términos y Condiciones. Usuario por primera vez, Regístrese</p>
    <p class="w3-justify">3. Compre su(s) entrada(s) directamente en los Puntos de Servicio autorizados. (Aplica cargo por servicio).</p>
    <p class="w3-justify">4. Verifique que su navegador se encuentra en optimas condiciones y MUY IMPORTANTE que tenga habilitados los Cookies y JavaScript para que pueda navegar y realizar el proceso de compra sin problemas.</p>
  </div>

    <footer class="w3-footer w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
        <h3>Síguenos</h3>
          <i class="fa fa-facebook-official w3-hover-opacity"></i>
          <i class="fa fa-instagram w3-hover-opacity"></i>
          <i class="fa fa-snapchat w3-hover-opacity"></i>
          <i class="fa fa-pinterest-p w3-hover-opacity"></i>
          <i class="fa fa-twitter w3-hover-opacity"></i>
          <i class="fa fa-linkedin w3-hover-opacity"></i>  
          <h4>© 2018 Special Ticket. Todos los derechos reservados.</h4>
</footer>
</html>
