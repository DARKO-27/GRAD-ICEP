/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.icep.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AdminFacadeLocal;
import za.ac.tut.ejb.bl.AlumniFacadeLocal;
import za.ac.tut.entities.Admin;
import za.ac.tut.entities.Alumni;

/**
 *
 * @author kgaog
 */
public class AlumniPasswordSessionServlet extends HttpServlet {

    @EJB
    private AlumniFacadeLocal afl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String studentNumber = request.getParameter("studAlumni");
         Alumni alumni = afl.getPasswordByStudentNumber(studentNumber);

        session.setAttribute("alumni", alumni);
        RequestDispatcher rd =request.getRequestDispatcher("alumni-password-reseted.jsp");
        rd.forward(request, response);
    }
   
}
