package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import java.util.Arrays;
import java.io.FileReader;
import java.io.BufferedReader;
import java.util.ArrayList;
import clases.Preguntas;
import java.util.List;
import clases.Usuarios;
import java.io.FileWriter;
import java.io.BufferedWriter;

public final class registrar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");

    if(application.getAttribute("cuentas")!=null&&request.getParameter("usu")!=null){
        if(request.getParameter("usu")!=null){
            String ruta= this.getServletContext().getRealPath("/");
            BufferedWriter escribirUser =new BufferedWriter(new FileWriter(ruta+"WEB-INF\\usuarios.txt"));
            PrintWriter escribe=new PrintWriter(escribirUser);
            escribe.write(request.getParameter("usu")+" quehay"+" oscar"+" @gmail.com");
            escribe.println();
            escribe.flush();
            escribe.close();
            escribirUser.close();
           
      out.write("\n");
      out.write("           ");
      if (true) {
        _jspx_page_context.forward("index.html");
        return;
      }
      out.write('\n');

        }
    }else{
        String ruta1= this.getServletContext().getRealPath("/");
            BufferedWriter escribirUser =new BufferedWriter(new FileWriter(ruta1+"WEB-INF\\usuarios.txt"));
            PrintWriter escribe=new PrintWriter(escribirUser);
            escribe.write(request.getParameter("usu")+" quehay"+" oscar"+" @gmail.com");
            escribe.println();
            escribe.flush();
            escribe.close();
            escribirUser.close();

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
        leerUser.close();
        //aqui es donde va a guardar las preguntas y respuestas
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
    
      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("index.html");
        return;
      }
      out.write("\n");
      out.write("    ");

    }
    
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Registro Gratis</h1>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <div style=\"background-color: aquamarine; width: 20%; border-radius: 50px;\">\n");
      out.write("            <form action=\"registrar.jsp\">\n");
      out.write("                <label>Usuario:  </label>\n");
      out.write("                <input type=\"text\" size=\"30px\" name=\"usu\" required><br>\n");
      out.write("                <br>\n");
      out.write("                <label>Password:  </label>\n");
      out.write("                <input type=\"text\" size=\"30px\" name=\"psdw\" required><br>\n");
      out.write("                <br>\n");
      out.write("                <label>Nombre:  </label>\n");
      out.write("                <input type=\"text\" size=\"30px\" name=\"nombre\" required><br>\n");
      out.write("                <br>\n");
      out.write("                <label>Correo:  </label>\n");
      out.write("                <input type=\"text\" size=\"30px\" name=\"correo\" required><br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <input type=\"submit\" vale=\"Registrar\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
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
