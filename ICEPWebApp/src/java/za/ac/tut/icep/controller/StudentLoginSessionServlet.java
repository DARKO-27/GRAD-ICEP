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
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class StudentLoginSessionServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String studentNumber = request.getParameter("studNumber");
        String password = request.getParameter("password");
        
        Student student = sfl.findByStudentNumber(studentNumber);
        
        String comfirmation = getValidation(student,studentNumber,password);
        
        session.setAttribute("student",student);
        RequestDispatcher rd =request.getRequestDispatcher(comfirmation);
        rd.forward(request, response);
    }

    private String getValidation(Student student, String studentNumber, String password) {
        String studNumber = student.getStudentNumber();
        String studPassword = student.getPassword();
        String url;
        
        if(!(studNumber == null))
        {
           if(studNumber.equalsIgnoreCase(studentNumber))
           {
            if(studPassword.equals(password))
            {
                url = "student-home-page.jsp";
            }
            else
            {
                url= "student-incorrect-password.jsp";
            }
           }
           else
           {
               url = "student-invalid-account.jsp";
           }
        }
        else
        {
            url = "student-invalid-account.jsp";
        }
        
        return url;
    }


}
