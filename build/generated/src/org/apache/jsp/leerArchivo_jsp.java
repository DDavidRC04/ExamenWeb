package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Arrays;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.io.FileReader;
import java.io.File;
import java.io.BufferedReader;
import java.io.IOException;
import clases.Preguntas;
import clases.Usuarios;
import java.util.List;

public final class leerArchivo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 
    List<Usuarios> cuenta;
    List<Preguntas> pregunta;

      out.write("    \n");
      out.write("\n");

    cuenta=new ArrayList();
    pregunta=new ArrayList();
    String ruta= this.getServletContext().getRealPath("/");
    BufferedReader leerUser =new BufferedReader(new FileReader(ruta+"WEB-INF\\usuarios.txt"));
    
    BufferedReader leerPregunta =new BufferedReader(new FileReader(ruta+"WEB-INF\\preguntas.txt"));
    String linea=leerUser.readLine();
    
    //aqui es donde se lee el archivo para leer los usuarios que estan 
    while(linea!=null){
        String campos[]=linea.split(" ");
        cuenta.add(new Usuarios(campos[0],campos[1]));
        linea=leerUser.readLine();
    }
    //aqui es donde va a guardar las preguntas y respuestas
    String linea2=leerPregunta.readLine(); 
    
    while(linea2!=null){
       String ans=linea2;
       linea2=leerPregunta.readLine();
       String resp[]=linea2.split(" ");
       List<String>re=new ArrayList();
       re=Arrays.asList(resp);
       pregunta.add(new Preguntas(ans,resp[0],re));
       linea2=leerPregunta.readLine();
    }
    

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ProGamers</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
           for(int i=0;i<cuenta.size();i++){
       
      out.write("\n");
      out.write("       <p>");
      out.print( cuenta.get(i).getUsuario() );
      out.write("<label>  ");
      out.print( cuenta.get(i).getContraseña());
      out.write("</label> </p>\n");
      out.write("       \n");
      out.write("       ");
}
      out.write("\n");
      out.write("       ");
 for(int i=0;i<pregunta.size();i++){
      out.write("\n");
      out.write("       <label>");
      out.print( pregunta.get(i).getPregunta());
      out.write("</label>\n");
      out.write("            ");
for(int j=0;j<pregunta.get(i).getRespuestas().size();j++){ 
      out.write("\n");
      out.write("            <label>");
      out.print( pregunta.get(i).getRespuestas().get(j));
      out.write("</label><br>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("       ");
}
      out.write("\n");
      out.write("    </body>    \n");
      out.write("    \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
