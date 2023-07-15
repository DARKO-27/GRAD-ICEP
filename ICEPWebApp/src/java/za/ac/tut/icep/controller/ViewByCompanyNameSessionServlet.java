/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.icep.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.CampanyFacadeLocal;
import za.ac.tut.ejb.bl.JobFacadeLocal;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Campany;
import za.ac.tut.entities.Job;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class ViewByCompanyNameSessionServlet extends HttpServlet {

    @EJB
    private CampanyFacadeLocal cfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        
       Campany company  = (Campany) session.getAttribute("company");
       String companyName = company.getCompanyName();
        
       List<Job> jobs =cfl.findJobsByCompanyName(companyName);
        
        
        session.setAttribute("jobs",jobs);
        RequestDispatcher rd =request.getRequestDispatcher("company-view-by-company-name.jsp");
        rd.forward(request, response);
    }
}
