package servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.Arrays;


@WebServlet("/ingresar")
public class Formulario extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        //seteamos el set
        response.setContentType("text/html");
        //dedeclara e indicializo
        String username = request.getParameter("username");
        //Declaro inicializo
        String password = request.getParameter("password");
        //Declaros una variable donde guardamos el email
        String email = request.getParameter("email");
        //Implementar variable para guardar los lengujes de programacion
        String[] lenguajes = request.getParameterValues("lenguajes");
        String idioma = request.getParameter("idioma");
        String pais = request.getParameter("pais");
        String[] roles = request.getParameterValues("roles");
        boolean habilitar=request.getParameter("habilitar") != null && request.getParameter("habilitar").equals("on");


        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Formulario</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Manejo de Formulario</h1>");
        out.println("<ul>");
        out.println("<li>Nombre usuario:" + username + "</li>");
        out.println("<li>Password:" + password + "</li>");
        out.println("<li>Email:" + email + "</li>");
        out.println("<ul>lenguaje:");
        Arrays.asList(lenguajes).forEach(lenguaje ->{
            out.println("<li>"+lenguaje + "<li>");
        });
        out.println("</ul>");
        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");
    }
}
