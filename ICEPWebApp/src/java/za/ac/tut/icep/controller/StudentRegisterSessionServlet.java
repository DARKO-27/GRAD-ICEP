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
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class StudentRegisterSessionServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;
    
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
        
        Student student = createStudent(name,surname,studentNumber,email,password,qualificationName,eduLevel);
        sfl.create(student);
         
        RequestDispatcher rd =request.getRequestDispatcher("student-account-created.jsp");
        rd.forward(request, response);
    }

    private Student createStudent(String name, String surname, String studentNumber, String email, String password,String qualificationName,String eduLevel) {
        
        Student student = new Student();
        student.setName(name);
        student.setSurname(surname);
        student.setEmail(email);
        student.setPassword(password);
        student.setStudentNumber(studentNumber);
        student.setEducationLevel(eduLevel);
        student.setQualificationName(qualificationName);
        student.setCreationDate(new Date());
        
        return student;
    }
}
