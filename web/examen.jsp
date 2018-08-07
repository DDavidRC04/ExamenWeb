<%-- 
    Document   : examen
    Created on : 30/10/2016, 07:11:44 PM
    Author     : roboPC
--%>

<%@page import="java.util.Collections"%>
<%@page import="clases.Preguntas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Preguntas> preguntas =new ArrayList();
    preguntas=(ArrayList)application.getAttribute("preguntas");
    Collections.shuffle(preguntas);
    application.setAttribute("preguntas",preguntas);
%>    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="examenes">
            <form action="nresultadoExamen.jsp">
                <%
                for(int i=0;i<preguntas.size();i++){
                    preguntas.get(i).desorden();
                %>
                    <label><%=preguntas.get(i).getPregunta()%></label><br>
                    <%for(int j=0;j<preguntas.get(i).getRespuestas().size();j++){ %>
                    <input type="radio" name="pregunta<%=i%>" value="<%=preguntas.get(i).getRespuestas().get(j) %>"><%=preguntas.get(i).getRespuestas().get(j) %>
                    <br>
                <%
                    }
                    %><br><%
                }
                %>
                <input type="submit" value="Revisar Examen"><br>
            </form>
        </div>
    </body>
</html>
