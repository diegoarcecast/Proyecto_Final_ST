<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mod_Usuario.aspx.cs" Inherits="Proyecto_SITE.WebForms.Mod_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/Mod_Usuario.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <title>Modificar Datos</title>
</head>
<body>
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
    <form id="form1" runat="server">
        <%--TITULO--%>
    <div>
        <div id="titulo">
                <div class="container">
                    <div class="c-content-title-1">
                        <h3 id="h3">Modificar Datos</h3>
                        <div></div>
                    </div>
                </div>
            </div>
    </div>
   <%--Tabla--%>
        <table id="tabla">
            <tbody>
                <tr>
                    <td id="General">
                        <span class="Mod">Usuario :: Modificar<br>
                        </span>
                        <span class="error_message"></span>
                        <table border="0" style="width: 100%">

                            <script language="JavaScript">
                                function cancelar() {
                                    document.DATOS.OPERACION.value = 'CANCELAR';
                                    document.DATOS.submit();
                                }

                            </script>

                            <form name="DATOS" method="POST" action="main.php?ACTION=DATOS_MODIFICAR" target=""></form>
                            <input type="hidden" name="OPERACION" value="MODIFICAR_SAVE" />
                            <input type="hidden" name="USID" />
                            <tbody>
                                <tr>
                                    <td class="col1">
                                        <span class="field_value">Login (Correo)
                                        </span></td>
                                    <td>
                                        <input type="text" size="30" class="textbox1" name="CORREO" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="col1">
                                        <span class="field_value">Nombre
                                        </span></td>
                                    <td>
                                        <input type="text" size="30" class="textbox1" name="NOMBRE" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="col1">
                                        <span class="field_value">Teléfono
                                        </span></td>
                                    <td>
                                        <input type="text" size="15" class="textbox2" name="TELEFONO" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="col1">
                                        <span class="field_value">Notas
                                        </span></td>
                                    <td>
                                        <input type="text" size="15" class="textbox2" name="NOTAS" value="" />
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                        <input type="submit" value="Modificar" class="boton" />
                        <input type="button" value="Cancelar" class="boton" onclick="cancelar()" />
                    </td>
                </tr>
            </tbody>
        </table>


    </form>
</body>
</html>