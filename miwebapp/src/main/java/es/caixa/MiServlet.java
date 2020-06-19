package es.caixa;

import javax.servlet.http.*;

import javax.servlet.*;
import java.io.*;

public class MiServlet extends HttpServlet{
    // Peticion que hace el usuario <- Tengo que leer la peticion (LECTURA)
    // HttpServletRequest
    
    // Respuesta que va a dar el servidor <- Yo la genero (ESCRITURA)
    // HttpServletResponse
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        GestorUsuarios miGestor=new GestorUsuarios();
        
        String nombre=req.getParameter("email");
        
        Usuario paraConsultar=miGestor.getUsuario(nombre);
        
        //resp.setContentType("text/html;charset=UTF-8");
        resp.setContentType("text/yaml");
        
        PrintWriter elTextoQueMandoAlCliente=resp.getWriter();
        
        elTextoQueMandoAlCliente.println("usuario:");
        elTextoQueMandoAlCliente.println("  nombre:" + paraConsultar.getNombre());
        elTextoQueMandoAlCliente.println("  Apellidos:" + paraConsultar.getApellidos());
        elTextoQueMandoAlCliente.println("  Edad:" + paraConsultar.getEdad());
        elTextoQueMandoAlCliente.println("  Email:" + paraConsultar.getEmail());
    }
    
    public void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        GestorUsuarios miGestor=new GestorUsuarios();
        
        String nombre=req.getParameter("email");
        Usuario paraConsultar=miGestor.getUsuario(nombre);
        miGestor.borrarUsuario(paraConsultar);
        
        //resp.setContentType("text/html;charset=UTF-8");
        resp.setContentType("text/yaml");
        PrintWriter elTextoQueMandoAlCliente=resp.getWriter();
        elTextoQueMandoAlCliente.println("status: OK");
    }
} 