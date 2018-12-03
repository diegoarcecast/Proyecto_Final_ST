<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_InicioSesion.aspx.cs" Inherits="Proyecto_SITE.WebForms.wfrm_InicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio de Sesión</title>
    <link href="../CSS/Inicio_Sesion.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
<div class="Titulos">
        <h2>SPECIAL TICKET</h2>
        <h4>INICIO DE SESIÓN</h4>
</div>

    <div class="Ingreso">
        <br /> <br />
        <asp:Label runat="server" ID="lbl_Correo">Correo Electronico:</asp:Label>
        <br /> <br />
        <asp:TextBox runat="server" ID="txt_Correo" MaxLength="76" /> 
        <br /> <br />
        <asp:Label runat="server" ID="lbl_Contraseña">Contraseña:</asp:Label>
        <br /> <br />
        <asp:TextBox runat="server" ID="txt_Contraseña" MaxLength="32"/> 
        <br /> <br /> <br />
        <asp:Button runat="server" ID="btn_Ingresar" Text="Ingresar" OnClick="btn_Ingresar_Click" />
    </div>
        <br />
        <div class="Informacion">
            <h3>Síguenos</h3>
            <h4>© 2018 Special Ticket. Todos los derechos reservados.</h4>
        </div>




    </form>
</body>
</html>
