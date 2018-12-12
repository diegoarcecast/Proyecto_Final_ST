<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Principal.aspx.cs" Inherits="Proyecto_SITE.WebForms.wfrm_Principal" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
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
    <script>


    </script>
<!-- Navbededar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Inicio</a>
    <a href="#ProximosEventos" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Proximos Eventos</a>
    <a href="#Nosotros" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Nosotros</a>
       <div class="w3-dropdown-hover w3-hide-small">
        <button class="w3-padding-large w3-button" title="More">Categorías</button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="wfrm_Cat_Conciertos.aspx" class="w3-bar-item w3-button">Conciertos</a>
        <a href="wfrm_Cat_Teatro.aspx" class="w3-bar-item w3-button">Teatro</a>
        <a href="wfrm_Cat_Deportes.aspx" class="w3-bar-item w3-button">Deportes</a>
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
          <a href="wfrm_InicioSesion.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Iniciar Sesión</a>
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

<!-- Div Pagina -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Slideshow  -->
  <div class="mySlides w3-display-container w3-center">
    <img src="../Resources/img1.jpg" style="width:100%"/>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small"> 
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="../Resources/90p.png" style="width:100%"/>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">   
    </div>
  </div>
  </div>

  <!-- Proximos Eventos -->
  <div class="w3-white" id="ProximosEventos">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">Proximos Eventos</h2>
      <p class="w3-opacity w3-center"><i>Reserva tu entrada!</i></p><br>
        <div id="DIV1" runat="server"></div>
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="../Resources/90p.jpg"  alt="90 minutos por la vida" style="width:100%" class="w3-hover-opacity"/>
          <div class="w3-container w3-white">
            <p><b>90 minutos por la vida</b></p>
            <p class="w3-opacity">06 Enero 2019</p>
            <p>Unidos contra el cáncer infantil</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Comprar entrada</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="../Resources/img1.jpg" alt="Orquesta Filarmónica" style="width:150%" class="w3-hover-opacity"/>
          <div class="w3-container w3-white">
            <p><b>Orquesta Filarmónica</b></p>
            <p class="w3-opacity">16-17 Dic 2018</p>
            <p>Disfute del talento nacional</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Comprar entrada</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Ticket Modal -->
  <div id="ticketModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('ticketModal').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Entradas</h2>
      </header>
      <div class="w3-container">
        <p><label><i class="fa fa-shopping-cart"></i> Entrada, 5000 por persona</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Cantidad:"/>
        <p><label><i class="fa fa-user"></i>Correo:</label></p>
        <input class="w3-input w3-border" type="text" placeholder="alguien@correo.com"/>
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">Pagar<i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Cerrar <i class="fa fa-remove"></i></button>
        <p class="w3-right"><a href="#" class="w3-text-blue">Ayuda</a></p>
      </div>
    </div>
  </div>

  <!-- Nosotros -->
    <div class="w3-black">
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="Nosotros">
    <h2 class="w3-wide">Nosotros</h2>
    <p class="w3-opacity"><i>Special Ticket</i></p>
    <p class="w3-justify">Somos una empresa costarricense independiente que se dedica al servicio de emisión y distribución de entradas para todo tipo de eventos (musicales, teatrales, culturales, deportivos, seminarios, entre otros.)
                          SpecialTicket emite las entradas por orden y cuenta de los productores o promotores que nos contratan para uno o más eventos.
                          Gracias a nuestro sistema de emisión computarizada de entradas aseguramos la más transparente gestión a los productores o promotores del evento y al mismo tiempo, garantizamos un método eficiente y seguro a los consumidores que adquieren su entrada sin correr el riesgo de sobreventa de asientos.</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-half">
        <p>Terminos y Condiciones</p>
        <img src="../Resources/terminos-y-condiciones-img.png" class="w3-round w3-margin-bottom" alt="Terminos y Condiciones" style="width:60%"/>
      </div>
      <div class="w3-half">
        <p>Politica de Provacidad</p>
        <img src="../Resources/security_icon.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%"/>
      </div>
      
    </div>
  </div>
 </div>

  <!-- Contacto -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="Contacto">
    <h2 class="w3-wide w3-center">Contáctenos</h2>
    <p class="w3-opacity w3-center"><i>Comentarios, Dudas y/o Sugerencias</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> San José, CR<br/>
        <i class="fa fa-phone" style="width:30px"></i> Phone: 4000-5990<br/>
        <i class="fa fa-envelope" style="width:30px"> </i> Correo: info@specialticket.com<br/>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-complete">
              <input class="w3-input w3-border-dark-grey" type="text" placeholder="Nombre" required name="Nombre"/>
            </div>
            <div class="w3-complete">
              <input class="w3-input w3-border-dark-grey" type="text" placeholder="Correo" required name="Correo"/>
            </div>
              <div class="w3-complete">
              <input class="w3-input w3-border-dark-grey" type="text" placeholder="Confirmación Correo" required name="Confirmación Correo"/>
            </div>
              <div class="w3-complete">
              <input class="w3-input w3-border-dark-grey" type="phone" placeholder="Teléfono" required name="Teléfono"/>
            </div>
            <div class="w3-complete">
              <input class="w3-input w3-border-dark-grey" type="text" placeholder="Comentarios" required name="Comentarios"/>
            </div>
          </div>            
          <button class="w3-button w3-black w3-section w3-right" type="submit">Enviar</button>
        </form>
      </div>
    </div>
  </div>
  
<!-- Final  -->


<!-- Patrocinadores -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
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
    

<script>
// Slideshow - 4 segundos
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}

// Navbar
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

// Cerrar Modal
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
