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
import za.ac.tut.ejb.bl.CampanyFacadeLocal;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Campany;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
public class CompanytRegisterSessionServlet extends HttpServlet {

    @EJB
    private CampanyFacadeLocal cfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        
        String companyName = request.getParameter("uname");
        String companyEmail = request.getParameter("email");
        String companyCell = request.getParameter("cell");
        String companyPassword = request.getParameter("password");
        
        Campany company = createCompany(companyName,companyEmail,companyCell,companyPassword);
        cfl.create(company);
        
        RequestDispatcher rd =request.getRequestDispatcher("company-account-created.jsp");
        rd.forward(request, response);
    }

    private Campany createCompany(String companyName, String companyEmail, String companyCell, String companyPassword) {

        Campany company = new Campany();
        company.setCompanyCell(companyCell);
        company.setCompanyEmail(companyEmail);
        company.setCompanyName(companyName);
        company.setCreationDate(new Date());
        company.setCompanyPassword(companyPassword);
        return company;
    
    }

}
