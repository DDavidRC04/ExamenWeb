<%-- 
    Document   : principal
    Created on : 30/10/2016, 09:10:36 AM
    Author     : roboPC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>
        
        <h1>Bienvenido</h1>
        <p><%= request.getSession().getAttribute("user") %></p>
        <%
            ArrayList<Usuarios> cuenta =new ArrayList();
            cuenta=(ArrayList)application.getAttribute("cuentas");
            for(int i=0;i<cuenta.size();i++){
                %><p><%=cuenta.get(i).getUsuario() %></p><%=cuenta.get(i).getContraseña()%><br><%
            }
        %>
        <a href="examen.jsp">IniciarExamen</a>
        
        <a> </a>
    </body>
</html>
