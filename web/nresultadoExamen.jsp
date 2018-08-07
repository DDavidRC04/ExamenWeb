<%-- 
    Document   : nresultadoExamen
    Created on : 30/10/2016, 09:17:10 PM
    Author     : roboPC
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="java.io.IOException"%>
<%@page import="java.awt.Font"%>
<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="clases.Usuarios"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Preguntas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ArrayList<Preguntas> preguntas =new ArrayList();
    preguntas=(ArrayList)application.getAttribute("preguntas");
    
    ArrayList<Usuarios> cuenta =new ArrayList();
    cuenta=(ArrayList)application.getAttribute("cuentas");
    
    int pos=0;
    for(int j=0;j<cuenta.size();j++){
        if(request.getSession().getAttribute("user").equals(cuenta.get(j).getUsuario())){
            pos=j;
        }
    }
    cuenta.get(pos).setCalifcacion2(0);
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        double calif=0;
        for(int i=0;i<preguntas.size();i++){
            if(preguntas.get(i).getRespuestaCorrecta().equals(request.getParameter("pregunta"+i))){
                cuenta.get(pos).setCalifcacion(12.5);
            }
        }
        %>
        
    <center>
        <h1>Resultado de tu examen <%= request.getSession().getAttribute("user") %></h1>
        <div>
            <%
            if(cuenta.get(pos).getCalificacion()>70){
                    String ruta= this.getServletContext().getRealPath("/");
                    FileOutputStream archivo = new FileOutputStream(ruta+"pdf\\certificado.pdf");
                    Document documento=new Document();
                    PdfWriter.getInstance(documento, archivo).setInitialLeading(10);
                    documento.open();
                    Paragraph parrafo=new Paragraph("ProGamer",FontFactory.getFont("arial", 30, Font.BOLD));
                    parrafo.setAlignment(1); 
                    documento.add(parrafo);
                    try{
                        Image Pagina=Image.getInstance(ruta+"Imagenes\\logo.jpg");
                        Pagina.scaleToFit(100, 100);
                        Pagina.setAlignment(1);
                        documento.add(Pagina);
                    }catch(Exception e){
                        
                    } 
                    Paragraph parrafo2=new Paragraph("Se Otorga un certificado a: "+request.getSession().getAttribute("user"),FontFactory.getFont("arial", 10, Font.BOLD));
                    parrafo2.setAlignment(1);
                    documento.add(parrafo2);
                    parrafo2=new Paragraph("");
                    documento.add(parrafo2); 
                    parrafo2=new Paragraph("Con un promedio de: "+cuenta.get(pos).getCalificacion(),FontFactory.getFont("arial", 10, Font.BOLD));
                    documento.add(parrafo2);
                    parrafo2=new Paragraph("");
                    documento.add(parrafo2);
                    parrafo2=new Paragraph("");
                    documento.add(parrafo2);
                    
                    documento.close();
                    
                %><h1>FELICIDADES HAS APROBADO EL EXAMEN</h1> <label><%=cuenta.get(pos).getCalificacion()%></label><br> <%
                    
                %><a href="pdf/certificado.pdf" download="Hola">Descarga</a><%    
            }else{
%><h1>FELICIDADES NO HAS APROBADO EL EXAMEN</h1><label><%=cuenta.get(pos).getCalificacion()%></label><br>

<%
            }
            %>            
            <% 
                String ruta= this.getServletContext().getRealPath("/");
                    BufferedWriter br=new BufferedWriter(new FileWriter(ruta+"pdf\\datos.txt",true));
                    Date fecha=new Date();
                    DateFormat formato=DateFormat.getDateInstance(DateFormat.LONG);
                    DateFormat hora=new SimpleDateFormat("HH:mm:ss");
                    String datos=""+cuenta.get(pos).getUsuario()+" Examen certificacion videdo juego "+cuenta.get(pos).getCalificacion()+" "+formato.format(fecha)+" "+hora.format(fecha);
                    br.write(datos);
                    br.newLine();
                    br.flush();
                    br.close();
            %>
        </div>
    </center>
    </body>
</html>
