<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Terminos_y_condiciones.aspx.cs" Inherits="Proyecto_SITE.WebForms.wfrm_Terminos_y_condiciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terminos y Condiciones</title>
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
    <h2 class="w3-wide">Terminos y Condiciones</h2>
    <p class="w3-justify">El uso del sitio SpecialTicket.net está regido por los términos y condiciones que a continuación se describen. Su uso indica la plena e incondicionada aceptación de los mismos. La compra de una o más entradas a través de este sitio indica la aceptación de los términos y condiciones detallados a continuación. SpecialTicket.net se reserva el derecho de realizar cambios en el sitio y en los Términos y Condiciones en cualquier momento sin preaviso.</p>
    <p class="w3-opacity"><i>1. Special Ticket</i></p>
    <p class="w3-justify">SpecialTicket no está asociado a ningún otro sitio Web, teatro, lugar, estadio, artista, sociedad deportiva, instituciones u otra compañía de venta de entradas. El precio de la entrada adquirida en el sitio SpecialTicket.net, a través de Call Center, comercios autorizados (puntos de servicio) y Boletería, se le podrá aplicar el cargo por servicio que aumenta el valor del ticket. El monto de cargo por servicio puede variar por evento y por lugar. Usted puede adquirir una o más entradas durante todo el período de preventa. Se aplican restricciones por algunos eventos que seran informados oportunamente por los Términos y Condiciones de cada evento. Los descuentos por ciudadano de oro, por menores de 12 años u otros que implican la presencia física del beneficiario del descuento para su verificación y dependiendo de la política comercial utilizada por el productor o promotor en cada evento específico, no podrán ser aplicados en la compra por Internet.</p>
    <p class="w3-opacity"><i>2. ¿Por qué solicita Specialticket.net los datos personales?</i></p>
    <p class="w3-justify">Solicitud de Datos de la Tarjeta de crédito o débito: Los datos de la tarjeta se solicitan con el único fin de garantizar la seguridad del Cliente como de nuestra empresa, a través del siguiente procedimiento: en el momento del retiro de la(s) entrada(s) el encargado de la entrega verifica que los datos registrados de la tarjeta de crédito o débito en nuestro sistema (únicamente los primeros 6 dígitos y últimos 4 dígitos) coincidan con los números de la tarjeta presentada por el cliente en el momento del retiro de la(s) entrada(s). De esta forma nos aseguramos que el titular de la tarjeta de crédito o débito con la cual se realizó la compra es la misma persona que retira la(s) entrada(s).</p>
    <p class="w3-justify">En caso de que Specialticket.net realice una devolución de dinero al Cliente, a este se solicitará que envié únicamente por el Correo Electrónico, el numero completo de la tarjeta de débito o crédito con la cual se realizó la compra y eventualmente su fecha de vencimiento, con el único fin de iniciar el trámite de devolución con la entidad financiera que ha procesado la transacción. Dicha entidad nos exige que se le informe por escrito los datos completos de la tarjeta a la cual hay que aplicar la devolución.</p>
    <p class="w3-justify">Solicitud de Datos Personales: Nuestra empresa solicita los datos específicos de nombre, apellidos, cédula, número telefónico y correo electrónico en caso que se presente la cancelación o algún cambio en la logística del evento para el cual se ha realizado la compra. De esta forma nuestro personal encargado puede contactar el Cliente de una manera eficiente. El correo electrónico también nos permite poder enviarle eventuales notificaciones sobre los eventos siempre y cuando Specialticket.net cuenta con la debida autorización del Cliente en el respecto de la Ley N.8.968 del año 2011.</p>
    <p class="w3-opacity"><i>3. Reglas de devolución y reembolso</i></p>
    <p class="w3-justify">Todas las ventas son en firme. Ninguna anulación, reembolso, cambio de entradas o créditos pueden ser hechos después de que se haya confirmado su orden. Si hay un aplazamiento de fecha o cambio de hora del evento, las entradas respectivas seguirán teniendo validez para la fecha establecida a futuro. En este caso no será necesario emitir nuevas entradas. El Sitio informará oportunamente sobre dichos cambios. Specialticket.net no se hace responsable en caso de que el cliente no tenga conocimiento de la postergación del evento. Si un evento es anulado sin que la Producción prevea otra fecha a futuro, a usted se le rembolsará el valor de la entrada. Los montos pagados por concepto de entrega a domicilio y/o eventuales cargos por servicio, no serán reembolsados. Usted no deberá devolver la entrada a la boletería del lugar donde se realiza el evento. Dado que las transacciones que se efectúan en el Sitio se ejecutan exclusivamente con tarjeta de crédito o débito, el reembolso se hará efectivo directamente a través de la Autorizadora de su tarjeta de crédito o débito. La responsabilidad de reembolso de parte de SpecialTicket.net será únicamente a) rembolsar el monto correspondiente a las entradas efectivamente compradas y no entregadas por un punto de servicio que integra la red de distribución de SpecialTicket.net, b) sobre la devolución del dinero debitado por el Ente procesador de las tarjetas de crédito o débito a causa de los intentos fallidos de compras por los cuales no se ha generado el respectivo código necesario para realizar el retiro de las entradas adquiridas. En este caso El Cliente reconoce y acepta que SpecialTicket.net no podrá asegurar los mismos asientos o localidades deseadas, así como no podrá generar ventas por cuenta y orden del Cliente Solicitante, c) realizar la reversión de transacciones cuyos cobros han sido repetidos para una misma compra y que han sido debitados al Cliente. SpecialTicket.net, a los efectos de realizar el trámite de devolución del monto correspondiente, podrá solicitar exclusivamente por medio de correo electrónico al Cliente las informaciones relativas a la/s transacción/es por las cuales se ha solicitado la devolución tales como estado de cuenta bancaria donde se refleja la transacción reclamada, número completo de las tarjetas de crédito o débito, su fecha de vencimiento, código de compra, otros. El tiempo de devolución del dinero es el tiempo utilizado por el Ente procesador de tarjeta de crédito o débito y el Banco emisor de la tarjeta de crédito o débito a través la cual se realizó la compra. SpecialTicket.net no se hace responsable de eventuales atrasos o incumplimientos de parte de los Entes financieros responsables de la devolución o reversión del monto reclamado. El Cliente acepta y reconoce que la responsabilidad de SpecialTicket.net se limita únicamente a gestionar el trámite con el Ente procesador de la tarjeta de crédito o débito y notificarlo al Cliente a través de correo electrónico. SpecialTicket.net no sustituye entradas perdidas, dañadas o robadas. Con el fin de evitar inconvenientes, no exponga sus entradas a la luz del sol, al calor, al frío ni a líquidos.</p>
    <p class="w3-opacity"><i>4. Términos de Pago:</i></p>
    <p class="w3-justify">Los términos de pago serán determinados por SpecialTicket.net. El Sitio Web permite realizar su compra siempre y cuando recibe del Ente procesador de la tarjeta de crédito o débito la correspondiente autorizacion. El debito a su tarjeta de crédito o debito puede ser realizado en dólares estadounidenses, dependiendo de la politica de compra exigida por el Responsable del evento, por lo cual usted acepta el cargo en dolares al realizar la compra. SpecialTicket.net no se hace responsable si la institución financiera rechaza la tarjeta de crédito o débito por cualquier razón. Por favor tomar como guía la siguiente tabla para identificar las tarjetas aceptadas según el tipo y Punto de Servicio. Tenga en cuenta que la compra podria ser exitosa y aceptada por la entidad bancaria en todos los casos, pero no podrán ser retiradas las entradas si aplica la condición NO de la tabla que se muestra a continuacion. En caso de realizarse el debito y no el retiro de las entradas, SpecialTicket.net no realizará la devolución del dinero correspondiente.</p>
    <table>
        <tr>
            <td><strong></strong></td>
            <td colspan="5"><strong>Web</strong></td>
            <td colspan="6"><strong>Call Center</strong></td>
            <td colspan="6"><strong>Punto de Serivicio</strong></td>
        </tr>
        <tr>
            <td><strong></strong></td>
            <td ><strong>Visa</strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
            <td><strong></strong></td>
            <td ><strong>Visa</strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
            <td><strong></strong></td>
            <td ><strong>Visa</strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
        </tr>
        <tr>
            <td><strong>Tarjeta Virtual</strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td>
        </tr>
        <tr>
            <td><strong>Sin Relieve</strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td>
        </tr>
        <tr>
            <td><strong>Tarjeta con Relieve</strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong>
        </tr>
    </table>
    <p class="w3-opacity"><i>5. Términos de aceptación de una orden</i></p>
    <p class="w3-justify">La confirmación de la compra realizada por el cliente no significa nuestra aceptación de la compra. SpecialTicket.net se reserva el derecho en cualquier momento, después de que haya recibido la confirmación de su compra, de aceptar o de declinar su compra por cualquier razón. </p>
    <p class="w3-opacity"><i>6. Condiciones de reserva de la entrada</i></p>
    <p class="w3-justify">En caso de que, para un evento específico y dependiendo de la política de venta del Productor o Promotor, exista la opción de únicamente reservar la(s) entrada(s) y no realizar su compra, usted puede efectuar su reserva hasta 48 horas antes del inicio del evento. Usted recibirá en el acto la confirmación de la reserva indicándole el respectivo código con el cual deberá retirar la entrada en uno de nuestros Puntos de venta en un lapso de tiempo límite indicado en el formulario de reserva del Sitio (generalmente 48 o 72 horas después de haber recibido la confirmación de su reserva). Superado este límite de tiempo, SpecialTicket.net anulará en forma automática la reserva sin que usted tenga derecho de reclamo. SpecialTicket.net, solo en caso de reserva, aplicará un cargo a su tarjeta de crédito correspondiente a un mínimo del 10% hasta un máximo del 20% sobre el precio de la(s) entrada(s) reservada(s) en concepto de garantía de reserva. Dicho cargo le será sucesivamente descontado del total de la transacción en el momento de su definitiva cancelación a realizarse en uno de nuestros Puntos de venta. En caso de que usted no retire la(s) entrada(s) reservada(s) en el tiempo límite previsto (48 o 72 horas después de haber recibido la confirmación de su reserva), usted perderá la reserva y el cargo aplicado sin tener derecho a reclamar su reembolso o devolución.</p>
    <p class="w3-opacity"><i>7. Condiciones de entrega de la entrada</i></p>
    <p class="w3-justify">Sea que se realice una compra o una reserva, usted deberá retirar la(s) entrada(s) en unos de los Puntos de Servicio autorizados por evento a cuya ubicación y horario de atención están debidamente informados en el Sitio Web en la información específica del evento. Si usted: Compra la entrada con tarjeta de crédito o débito por Internet o Call Center, puede retirar su entrada directamente en cualquier momento (eventuales restricciones serán oportunamente informadas en el Sitio Web) , presentando el código de compra, la tarjeta de crédito con la cual realizó la transacción y un documento de identificación vigente sea esto: a) La cédula de identidad costarricense o b) El pasaporte costarricense o extranjero. Dicho código le será informado directamente por el Operador del Call Center, en caso de venta telefónica, o por el mismo sitio web una vez que usted ha realizado la compra con su tarjeta de crédito o débito. Un resumen de la transacción y el código de venta les serán inmediatamente enviados a su correo electrónico. SpecialTicket.net no se hace responsable en caso de que el usuario no reciba el E-mail de confirmación por causas ajenas a nuestra empresa. Recuerde que para el retiro de las entradas adquiridas, El comprobante enviado a su correo electrónico, no es requisito esencial, sino el código de compra La reserva de la entrada por Internet o Call Center, también puede retirarla y cancelarla en la boletería (eventuales restricciones serán oportunamente informadas en el Sitio Web) presentando el código de reserva entre 4 horas y una hora antes de que inicie el evento y respetando el tiempo límite para el mantenimiento de la reserva(48 o 72 horas después de haber recibido la confirmación de su reserva). Se aplica el mismo procedimiento utilizado para la compra. Por favor lea atentamente los Términos y Condiciones específicos de cada evento, ya que en su mayoria el retiro de entradas no podrá ser realizado en la boletería del lugar del evento, le recomendamos retirarla con anticipación en nuestros Puntos de Servicio autorizados</p>
    <p class="w3-justify">IMPORTANTE: Cuando el Cliente realiza una reserva o compra de una o más entradas con tarjeta de crédito o débito a través del Call Center o del Sitio Web, es requisito indispensable retirarla(s) personalmente. Por su seguridad el personal encargado de entregar la(s) entrada(s) verificará que quien la(s) recibe sea el titular de la tarjeta de crédito o débito con la cual se ha efectuado la transacción. Por favor tomar como guía la siguiente tabla para identificar el documento a firmar como comprobante de entrega de sus entradas:</p>
    <table>
        <tr>
            <td><strong></strong></td>
            <td colspan="5"><strong>Compra realizada via Web</strong></td>
            <td colspan="6"><strong>Compra realizada via Call Center</strong></td>
            <td colspan="6"><strong>Compra realizada en punto de servicio</strong></td>
        </tr>
        <tr>
            <td><strong></strong></td>
            <td ><strong>Visa/strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
            <td><strong></strong></td>
            <td ><strong>Visa</strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
            <td><strong></strong></td>
            <td ><strong>Visa</strong></td>
            <td><strong></strong></td>
            <td><strong>MasterCard</strong></td>
            <td><strong></strong></td>
            <td><strong>Otras</strong></td>
        </tr>
        <tr>
            <td><strong>Voucher Manual</strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td>
        </tr>
        <tr>
            <td><strong>Voucher Impreso</strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>NO</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td><td><strong></strong></td>
            <td><strong>SI</strong></td>
        </tr>
    </table>
      
    <p class="w3-opacity"><i>7.1. Condiciones para el servicio de entrega a domicilio.</i></p>
    <p class="w3-justify">Para su comodidad el sitio prevé la opción de compra con entrega a domicilio de la(s) entrada(s). Usted puede optar por esta modalidad por todo el período de preventa y hasta 5 días antes del inicio del evento. SpecialTicket.net se compromete a realizar la entrega de las entradas en un periodo de 3 a 5 días hábiles en un horario entre las 8:00AM y las 5:00PM. Le enfatizamos que la persona que recibe el paquete deber ser la titular de la tarjeta con la cual se realizó la compra, ya que se requiere la firma del voucher manual como comprante de la entrega de las entradas.El costo de este servicio es de ¢4.400 independientemente del número de entradas adquiridas y es a cargo del consumidor. Las tarifas son debidamente informadas en el sitio.La empresa de mensajería realizará máximo 2 intentos de entrega, en caso de no poder realizar la entrega sea que Usted no se encuentre, no posea la tarjeta de crédito / débito con la cual se realizó la transacción, no coincida la dirección otorgada por Usted, o números de teléfono erróneos o no claramente identificables entre otros, se procederá a regresar las entradas a la oficina de Specialticket.net donde el personal encargado se comunicará con el cliente para indicarle que el código se debe retirar en cualquier punto de servicio autorizado. SpecialTicket.net realizará un (1) envío a domicilio por cada transacción realizada. Si usted efectúa 2 o más transacciones SpecialTicket.net podrá realizar la entrega de estas en un solo pedido siempre y cuando nos sea notificado por usted mediante correo electrónico y que todas las transacciones sean efectuadas en un mismo día.</p>
    <p class="w3-opacity"><i>8. Jurisdicción y Lugar</i></p>
    <p class="w3-justify">Las leyes de la República de Costa Rica reglamentan el uso de las órdenes hechas en el Sitio. Usted acepta que cualquier demanda legal traída contra SpecialTicket.net será gobernada por las leyes de la República de Costa Rica. Usted acepta que la jurisdicción y el lugar único para cualquier demanda que se presente por el uso de órdenes hechas en el Sitio será el Tribunal de San José en la República de Costa Rica.</p>
    <p class="w3-opacity"><i>9. Errores Tipográficos</i></p>
    <p class="w3-justify">En la eventualidad que un producto tenga un precio o información incorrecta debido a un error tipográfico o a un error en los precios o información de producto recibida por los productores que nos contratan, el Sitio tendrá el derecho de rechazar o anular cualquier orden puesta con el precio incorrecto. SpecialTicket.net tendrá el derecho en cualquier momento de rechazar o de cancelar cualquier orden confirmada o ya debitada en su tarjeta. Si su compra ya ha sido cobrada y sucesivamente anulada, SpecialTicket.net acreditará a la cuenta de su tarjeta de crédito el monto correspondiente.</p>
    <p class="w3-opacity"><i>10. Aviso de Copyright</i></p>
    <p class="w3-justify">Este sitio es de propiedad exclusiva de SPECIAL TICKET SALE B.V. S.A. Todos los materiales que aparecen en este sitio, incluyendo el texto, el diseño, los logotipos, los gráficos, los iconos y las imágenes son de propiedad única y exclusiva de SPECIAL TICKET SALE B.V. S.A. copyright ©2004, TODOS LOS DERECHOS RESERVADOS. El software usado en el sitio para la venta de entradas es de propiedad única de ISTHMUS AK S.A. Usted puede utilizar el contenido de este Sitio Web solamente con el fin de obtener información sobre los eventos cuyas entradas están a la venta por el mismo, realizar compras o poner una orden en el sitio y para ningún otro propósito. Ningún material de este sitio se puede copiar, reproducir, modificar, republicar, transmitir, o distribuir en cualquier forma o por cualquier medio sin un permiso escrito por SPECIAL TICKET SALE B.V. S.A. Todos los derechos no expresados concedidos en el contenido son reservados. Cualquier uso no autorizado de los materiales que aparecen en este sitio puede violar el Copyright, la marca registrada y otras leyes aplicables y podría resultar en demandas criminales o civiles.</p>
    <p class="w3-opacity"><i>11. Negación y limitación de responsabilidad en cuanto a los productos vendidos</i></p>
    <p class="w3-justify">Excepto lo expresado en el contenido, SpecialTicket.net no realiza ninguna representación o garantía, directa o indirectamente, de ninguna clase con respecto a los productos vendidos en el sitio de SpecialTicket.net. Excepto lo expresado en el contenido, SpecialTicket.net niega expresamente todas las garantías de cualquier clase con respecto a los productos vendidos en este sitio, incluyendo pero no limitados al negocio y aptitud para un propósito particular. Usted acepta que la responsabilidad máxima única y exclusiva de SpecialTicket.net que presente cualquier producto vendido en el sitio de SpecialTicket.net, será el precio y la entrega del producto adquirido. En ningún momento y por cualquier circunstancia ajena a las obligaciones propias de SpecialTicket.net, usted podrá demandar o reclamar judicialmente por los daños especiales, indirectos, consecuentes o punitivos relacionados con el producto vendido, a los representantes de SpecialTicket.net.</p>
    <p class="w3-opacity"><i>12. La negación y la limitación de la responsabilidad en cuanto al sitio de SpecialTicket.net</i></p>
    <p class="w3-justify">El sitio y los materiales en este contenido son "tal como es". SpecialTicket.net no hace ninguna clase de representaciones o garantías, expresadas o implicadas, con respecto a sus operaciones, contenido, información y materiales. SpecialTicket.net niega expresamente todas las garantías, expresadas o implicadas, de cualquier clase con respecto a los sitios o a su uso, incluyendo pero no limitado al negocio y a la aptitud para un propósito particular. En ningún momento y por cualquiera circunstancia ajena a las obligaciones propias de SpecialTicket.net, usted podrá demandar o reclamar judicialmente por los daños especiales, indirectos, consecuentes, o punitivos relacionados con el contenido del sitio a los representantes de SpecialTicket.net.</p>
    <p class="w3-opacity"><i>13. Vínculos</i></p>
    <p class="w3-justify">Este sitio puede contener vínculos con otros sitios en Internet que sean de propiedad y administrados por compañías terceras. Usted reconoce que SpecialTicket.net no es responsable de la operación o del contenido de sitios de terceros.</p>
    <p class="w3-opacity"><i>14. Servicio y ayuda</i></p>
    <p class="w3-justify">SpecialTicket.net se esfuerza para darle el mejor servicio y la mejor ayuda técnica. SpecialTicket.net asegura que su personal de soporte procurará asistir a los clientes a través del correo electrónico en los problemas relativos a los productos de SpecialTicket.net. Todos los pedidos de servicio y ayuda deben hacerse directamente a SpecialTicket.net</p>
    <p class="w3-opacity"><i>15. Invalidez de cláusula</i></p>
    <p class="w3-justify">Si alguna cláusula de los Términos y Condiciones llegara a ser inválida, ilegal o inaplicable, la validez, la legalidad y la aplicabilidad de las cláusulas restantes de ninguna manera serán afectadas ni deterioradas de ningún modo.</p>
    <p class="w3-opacity"><i>16. Exclusión y limitación de responsabilidad</i></p>
    <p class="w3-justify">En ningún momento SpecialTicket.net será responsable frente al cliente o a cualquier compañía tercera por la pérdida o daño especial, indirecta, consecuente o punitiva por cualquier de estos términos y condiciones, incluyendo pero no limitado a la pérdida de beneficios, la pérdida de negocio o pérdida de uso, de cualquier demanda por cualquier compañía tercera.</p>
    <p class="w3-opacity"><i>17. Condiciones de entrega y compra de entradas para menores de edad</i></p>
    <p class="w3-justify">Los menores de edad podrán realizar compras y retiros de entradas siempre y cuando el evento sea destinado a todo público. Para realizar dicho trámite debe presentar el documento de identidad para menores o pasaporte, ambos deben estar vigentes. En el momento de la entrega el menor de edad debe escribir en el voucher el nombre completo, no debe firmar. SpecialTicket.net no será responsable si no puede realizar cualquiera de sus obligaciones contenidas en estos términos y condiciones debido a, directamente o indirectamente, al fallo de cualquier equipo, sistema de autorización, proceso de datos o sistema de comunicación o cualquier conflicto laboral, guerra, inundación, explosión, acto de fuerza mayor o cualquier otro evento fuera del control de SpecialTicket.net.</p>

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
