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
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Admin;
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class StudentPasswordSessionServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String studentNumber = request.getParameter("stud");
        
         Student student = sfl.findByStudentNumber(studentNumber);
        
         session.setAttribute("student",student);
        RequestDispatcher rd =request.getRequestDispatcher("student-password-reseted.jsp");
        rd.forward(request, response);
    }
   
}
