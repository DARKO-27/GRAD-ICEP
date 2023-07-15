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
public class CompanyLoginSessionServelt extends HttpServlet {

    @EJB
    private CampanyFacadeLocal cfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String companyEmail = request.getParameter("email");
        String companyPassword = request.getParameter("password");
        
        Campany company = cfl.findCompanyByEmail(companyEmail);
        
        String comfirmation = getValidation(company,companyEmail,companyPassword);
        
        session.setAttribute("company",company);
        RequestDispatcher rd =request.getRequestDispatcher(comfirmation);
        rd.forward(request, response);
    }

    private String getValidation(Campany company, String companyEmail, String companyPassword) {
        String email = company.getCompanyEmail();
        String password = company.getCompanyPassword();
        String url;
        
        if(!(email == null))
        {
           if(email.equalsIgnoreCase(companyEmail))
           {
            if(password.equals(companyPassword))
            {
                url = "company-home-page.jsp";
            }
            else
            {
                url= "company-incorrect-password.jsp";
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
