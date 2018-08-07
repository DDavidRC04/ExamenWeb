<%-- 
    Document   : cerrarSesion
    Created on : 31/10/2016, 01:37:18 AM
    Author     : roboPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  request.getSession().invalidate();
%>
<jsp:forward page="index.html"></jsp:forward>

