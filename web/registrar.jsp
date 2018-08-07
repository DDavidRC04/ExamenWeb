<%-- 
    Document   : registrar
    Created on : 30/10/2016, 03:23:50 PM
    Author     : roboPC
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Preguntas"%>
<%@page import="java.util.List"%>
<%@page import="clases.Usuarios"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   if(application.getAttribute("cuentas")==null){
        List<Usuarios> cuenta;
        List<Preguntas> pregunta;
        cuenta=new ArrayList();
        pregunta=new ArrayList();
        String ruta= this.getServletContext().getRealPath("/");
        BufferedReader leerUser =new BufferedReader(new FileReader(ruta+"WEB-INF\\usuarios.txt"));
        BufferedReader leerPregunta =new BufferedReader(new FileReader(ruta+"WEB-INF\\preguntas.txt"));
        String linea=leerUser.readLine();
        //aqui es donde se lee el archivo para leer los usuarios que estan 
        while(linea!=null){
            String campos[]=linea.split(",");
            cuenta.add(new Usuarios(campos[0],campos[1],campos[2],campos[3]));
            linea=leerUser.readLine();
        }
        //aqui es donde va a guardar las preguntas y respuestas
        leerUser.close();
        String linea2=leerPregunta.readLine(); 
        while(linea2!=null){
           String ans=linea2;
           linea2=leerPregunta.readLine();
           String resp[]=linea2.split(",");
           List<String>re=new ArrayList();
           re=Arrays.asList(resp);
           pregunta.add(new Preguntas(ans,resp[0],re));
           linea2=leerPregunta.readLine();
        }
        leerPregunta.close();
        application.setAttribute("cuentas", cuenta);
        application.setAttribute("preguntas", pregunta);
    }else{
        if(request.getParameter("usu12")!=null){
            List<Usuarios> cuenta =new ArrayList();
            cuenta=(ArrayList)application.getAttribute("cuentas");
            cuenta.add(new Usuarios(request.getParameter("usu12"),request.getParameter("psdw"),request.getParameter("nombre"),request.getParameter("correo")));
            application.setAttribute("cuentas", cuenta);
                %><jsp:forward page="index.html"></jsp:forward><%     
        }
    }
 %>
    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro Gratis</h1>
    <center>
        
        <div style="background-color: aquamarine; width: 20%; border-radius: 50px;">
            <form action="registrar.jsp">
                <%
                    if(request.getParameter("errorUsu")!=null){
                %><p><%=request.getParameter("errorUsu")%></p><%
                    }
                    %>
                <label>Usuario:  </label>
                <input type="text" size="30px" name="usu12" required><br>
                <br>
                <label>Password:  </label>
                <input type="text" size="30px" name="psdw" required><br>
                <br>
                <label>Nombre:  </label>
                <input type="text" size="30px" name="nombre" required><br>
                <br>
                <label>Correo:  </label>
                <input type="text" size="30px" name="correo" required><br>
                <br>
                <br>
                <input type="submit" vale="Registrar">
            </form>
        </div>
    </center>
    </body>
</html>
