/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Agenda;
import modelo.Contacto;
import modelo.ContactoDAO;

/**
 *
 * @author Jorge
 */
public class Controlador extends HttpServlet {

    String nombreDefecto = "jorge";
    String contadefecto = "jorge1";
    Agenda agenda1 = new Agenda();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String accion = request.getParameter("accion");

        switch (accion) {
            case "Iniciar Sesion":
                String nombre = request.getParameter("nombreUsuario");
                String contra = request.getParameter("contra");
                if (nombreDefecto.equals(nombre) && contadefecto.equals(contra)) {
                    response.sendRedirect("PantallaPrincipal.jsp");
                }
                else{
                    response.sendRedirect("index.jsp");
                }
                break;
            case "agregar":
                request.getRequestDispatcher("AgregarContacto.jsp").forward(request, response);
                break;

            case "Agregar Nuevo Contacto":
                String nombreContacto = request.getParameter("nombreContacto");
                int telefono = Integer.parseInt(request.getParameter("telefono"));
                String mail = request.getParameter("txtmail");
                Contacto c = new Contacto(nombreContacto, telefono, mail);
                ContactoDAO conDAO = new ContactoDAO();
                conDAO.agregar(c);
                request.setAttribute("mensaje", nombreContacto);
                request.getRequestDispatcher("AgregarContacto.jsp").forward(request, response);
                break;
            case "listar":
                ContactoDAO contDAO= new ContactoDAO();
                List<Contacto> aux=contDAO.listar();
                request.setAttribute("lista", aux);
                request.getRequestDispatcher("ListarContactos.jsp").forward(request, response);
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
