<%-- 
    Document   : checaUser
    Created on : 29/10/2016, 06:25:59 PM
    Author     : roboPC
--%>

<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="clases.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario="";//=request.getParameter("usuario");
    String pass="";//=request.getParameter("password");
    ArrayList<Usuarios> cuenta =new ArrayList();
    cuenta=(ArrayList)application.getAttribute("cuentas");
    
    if(request.getParameter("usuario2")!=null){
        usuario=request.getParameter("usuario2");
    }
    if(request.getParameter("password2")!=null){
        pass=request.getParameter("password2");
    }
    for(int i=0;i<cuenta.size();i++){
        if(cuenta.get(i).getUsuario().equals(usuario)){
            if(cuenta.get(i).getContraseña().equals(pass)){    
                HttpSession sesionOk= request.getSession();
                sesionOk.setAttribute("user", usuario);
                %><jsp:forward page="user.jsp"></jsp:forward><%
            }
        }
    }
                %><jsp:forward page="index.html"></jsp:forward><%
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checar</title>
    </head>
    <body> 
        <p><%= request.getParameter("usuario2") %></p>
        <p> <%= request.getParameter("password2") %></p>
    </body>
</html>
