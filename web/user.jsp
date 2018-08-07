<%-- 
    Document   : user
    Created on : Oct 31, 2016, 1:28:04 AM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getSession().getAttribute("user")==null){
        %><jsp:forward page="index.html"></jsp:forward><%
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pro Gamers</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Expires" content="0">
        <link href="StylesSheets/Style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <div class="container" >
            <nav class="navbar navbar-inverse ">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <span class="navbar-brand">Pro Gamers</span>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="">CryEngine 3</a></li>
                            <li><a href="">FrostBite 3</a></li>
                            <li><a href="">Battlefield 1</a></li>
                            <li><a href="examen.jsp" target="examenT">Battlefield 4</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <div class="chip">
                                    <img src="Imagenes/avatar.png" alt="Person" width="51" height="51">
                                    <%=request.getSession().getAttribute("user")%>
                                    <a href="cerrarSesion.jsp"><span class="closebtn" onclick="cerrarSesion.jsp">&times;</span></a>
                                        
                                </div>
                            </li>
                        </ul>
                    </div>
                    
                </div>
            </nav>
        </div>
    <div class="container">
        <iframe name="examenT">   
        </iframe>
    </div>                               
     
    </body>
</html>
