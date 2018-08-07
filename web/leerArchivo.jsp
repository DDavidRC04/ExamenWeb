<%-- 
    Document   : leerArchivo
    Created on : 29/10/2016, 03:51:26 PM
    Author     : roboPC
--%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%-----------Importar usuarios y preguntas---------------------%>
<%@page import="clases.Preguntas"%>
<%@page import="clases.Usuarios"%>
<%-------------------------------------%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
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
    }
%>
<jsp:forward page="checaUser.jsp"></jsp:forward>
    
    </body>
</html>

