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
import za.ac.tut.entities.Admin;
import za.ac.tut.entities.Alumni;

/**
 *
 * @author kgaog
 */
public class AdminLoginSessionServlet extends HttpServlet {

    @EJB
    private AdminFacadeLocal afl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        String password = request.getParameter("password");
        
        Admin admin = afl.findPassword(password);
        
        String comfirmation = getValidation(admin,password);
        RequestDispatcher rd =request.getRequestDispatcher(comfirmation);
        rd.forward(request, response);
    }
    private String getValidation(Admin admin,String password) {
        
        String AdminPassword = admin.getPassword();
        String url;
        
       
          if(!(AdminPassword == null))
          {
            if(AdminPassword.equals(password))
            {
                url = "admin-home-page.jsp";
            }
            else
            {
                url= "admin-incorrect-password.jsp";
            }
          }
          else
          {
              url = "student-invalid-account.jsp";
          }
          
        
        return url;
    }
}
