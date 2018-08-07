 <%-- 
    Document   : inicio
    Created on : 29/10/2016, 03:50:17 PM
    Author     : roboPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProGamers</title>
    </head>
    <body>
        <h1>ProGamers</h1>
    <center>
        <form action="leerArchivo.jsp">
            <label>Usuario:</label>
            <input type="text" size="30" name="usuario" required ><br>
            <label>Contraseña:</label>
            <input type="password" size="30" name="password" required><br>
            <input type="submit" value="enviar"> 
        </form>
    </center>
    </body>
</html>
