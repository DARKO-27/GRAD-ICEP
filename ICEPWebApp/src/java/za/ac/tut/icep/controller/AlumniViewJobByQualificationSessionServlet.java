/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.icep.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.AlumniFacadeLocal;
import za.ac.tut.ejb.bl.CampanyFacadeLocal;
import za.ac.tut.ejb.bl.JobFacadeLocal;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Campany;
import za.ac.tut.entities.Job;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class AlumniViewJobByQualificationSessionServlet extends HttpServlet {

    @EJB
    private AlumniFacadeLocal afl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        Alumni alumni = (Alumni) session.getAttribute("alumni");
        String qualificationName = alumni.getQualificationName();
        
        List<Job> jobs = afl.findJobByQualificationName(qualificationName);
        
        session.setAttribute("jobs",jobs);
        RequestDispatcher rd =request.getRequestDispatcher("alumni-view-by-qualification-name.jsp");
        rd.forward(request, response);
    }
    
}
