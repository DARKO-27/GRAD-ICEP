/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.icep.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AlumniFacadeLocal;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class RegisterAlumniSessionServlet extends HttpServlet {

    @EJB
    private AlumniFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String name = request.getParameter("uname");
        String surname = request.getParameter("surname");
        String studentNumber = request.getParameter("studNumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String qualificationName= request.getParameter("QualificationName");
        String eduLevel = request.getParameter("EduLevel");
        
        Alumni alumni = createAlumni(name,surname,studentNumber,email,password,qualificationName,eduLevel);
        sfl.create(alumni);
         
        RequestDispatcher rd =request.getRequestDispatcher("alumni-account-created.jsp");
        rd.forward(request, response);
    }

    private Alumni createAlumni(String name, String surname, String studentNumber, String email, String password,String qualificationName,String eduLevel) {
        
        Alumni alumni = new Alumni();
        alumni.setName(name);
        alumni.setSurname(surname);
        alumni.setEmail(email);
        alumni.setPassword(password);
        alumni.setStudentNumber(studentNumber);
        alumni.setQualificationName(qualificationName);
        alumni.setEducationLevel(eduLevel);
        alumni.setCreationDate(new Date());
        
        return alumni;
    }
}
