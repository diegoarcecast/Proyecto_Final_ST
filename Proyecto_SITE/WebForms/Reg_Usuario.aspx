<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Usuario.aspx.cs" Inherits="Proyecto_SITE.WebForms.Reg_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700&amp;subset=all" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/socicon/socicon.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap-social/bootstrap-social.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/animate/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN: BASE PLUGINS  -->
        <link href="assets/plugins/cubeportfolio/css/cubeportfolio.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/slider-for-bootstrap/css/slider.css" rel="stylesheet" type="text/css"/>
        <!-- END: BASE PLUGINS -->
        <!-- BEGIN THEME STYLES -->
        <link href="assets/base/css/plugins.css" rel="stylesheet" type="text/css"/>
        <link href="assets/base/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
        <link href="assets/base/css/themes/default.css" rel="stylesheet" id="style_theme" type="text/css"/>
        <link href="assets/base/css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="assets/base/css/slider.css" rel="stylesheet" type="text/css"/>
        <!-- END THEME STYLES -->
        <link rel="shortcut icon" href="assets/base/img/sts.png"/>
    <title>Registrarse</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="w3-bar w3-black w3-card">
            <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
            <a href="#" class="w3-bar-item w3-button w3-padding-large">Inicio</a>
            <a href="#ProximosEventos" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Proximos Eventos</a>
            <a href="#Nosotros" class="w3-bar-item w3-button w3-padding-large w3-hide-small" >Nosotros</a>
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
                    <a href="#" class="w3-bar-item w3-button">Términos y Condiciones</a>
                    <a href="#" class="w3-bar-item w3-button">¿Cómo comprar?</a>
                    <a href="#" class="w3-bar-item w3-button">¿Dónde retirar?</a>
                    <a href="#Contacto" class="w3-bar-item w3-button">Contacto</a>
                </div>
            </div>
            <div class="w3-right">
                <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Iniciar Sesión</a>
                <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Registrarse</a>
            </div>
        </div>
    <div>
        <table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td><div align="center">
        <p>&nbsp; </p>
        <p>&nbsp; </p>
      </div>
         <table width="300" style=" margin-top:-55px";  border=" 0"="" align="center" cellpadding="2" cellspacing="0" class="tablalogin">
          <tbody><tr bgcolor="#000000">
            <td colspan="2"> <div align="center"><strong><font color="#FFFFFF">REGISTRO DE NUEVO USUARIO</font></strong></div></td>
          </tr>
<tr>
<td colspan="2" align="center">
<table width="350" border="0">
  <tbody><tr>
    <td>
    <span class="form_title">
    Usuario :: Crear<br>
    </span>
    <span class="error_message">
	</span>
<table border="0" width="100%">
<script language="JavaScript">
    function cancelar() {
        document.DATOS.action = 'main.php?ACTION=USER_AUTOINSERT&OPERACION=CANCELAR';
        document.DATOS.submit();
    }
</script>
<form name="DATOS" method="POST" action="main.php?ACTION=USER_AUTOINSERT&amp;OPERACION=INSERT" target=""></form>
<tbody><tr>
	<td>
	  <span class="field_value">
       Correo
     </span></td>
	<td>
	  <input type="text" size="30" class="textbox" name="CORREO" value=""/>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Clave
     </span></td>
	<td>
	  <input type="password" size="30" class="textbox" name="CLAVE" value=""/>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Confirmación Clave
     </span></td>
	<td>
	  <input type="password" size="30" class="textbox" name="RECLAVE" value=""/>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Nombre
     </span></td>
	<td>
	  <input type="text" size="30" class="textbox" name="NOMBRE" value=""/>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Teléfono
     </span></td>
	<td>
	  <input type="text" size="15" class="textbox" name="TELEFONO" value=""/>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Deseo recibir notificaciones sobre nuevos eventos
     </span></td>
	<td>
	  <select name="recibirInfoEventos" id="recibirInfoEventos">
	   <option id="SI" selected="">SI</option>
	   <option id="NO">NO</option>
	  </select>
	  <%--<span class="field_value"> * </span>--%>
	</td>
</tr>
<tr>
	<td>
	  <span class="field_value">
       Notas
     </span></td>
	<td>
          <textarea cols="30" rows="3" name="NOTAS"></textarea>
	</td>
</tr>
<tr>
     <td><input type="button" value="Insertar" style="margin-top:13px;" class="button" onclick="Validar(this.form)"/>&nbsp;</td>
     <td><input type="button" value="Cancelar" class="button" onclick="cancelar()"/>&nbsp;</td>
</tr>
</tbody></table>
</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>

    </div>
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
    </form>
</body>
</html>