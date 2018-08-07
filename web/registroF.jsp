<%-- 
    Document   : registroF
    Created on : 30/10/2016, 11:55:24 PM
    Author     : roboPC
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<Usuarios> cuenta =new ArrayList();
            cuenta=(ArrayList)application.getAttribute("cuentas");
            for(int i=0;i<cuenta.size();i++){
            %><p><%=cuenta.get(i).getUsuario()  %></p><%
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
