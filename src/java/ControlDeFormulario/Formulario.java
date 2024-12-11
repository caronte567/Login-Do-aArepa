package ControlDeFormulario;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/procesarFormulario")
public class Formulario extends HttpServlet {
    private static final String USUARIO_VALIDO = "Admin";
    private static final String CONTRASEÑA_VALIDA = "12345";
            
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response. sendRedirect("index.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Usuario = request.getParameter("Usuario");
        String Contraseña = request.getParameter("Contraseña");        
    
        if (USUARIO_VALIDO.equals(Usuario) && CONTRASEÑA_VALIDA.equals(Contraseña)) {
            request.getRequestDispatcher("Bienvenido.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "El Usuario o la Contraseña son incorrectos");
            request.setAttribute("errorExists",true);            
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
