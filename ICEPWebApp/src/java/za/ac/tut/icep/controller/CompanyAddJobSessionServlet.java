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
public class CompanyAddJobSessionServlet extends HttpServlet {

    @EJB
    private JobFacadeLocal jfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        HttpSession session  = request.getSession(true);
        
        String jobName = request.getParameter("jobName");
        String companyName = request.getParameter("companyName");
        String jobType = request.getParameter("jobType");
        String jobLocation = request.getParameter("jobLocation");
        String candicatesRequired = request.getParameter("candicate");
        String jobRequirements = request.getParameter("req");
        String jobDescription = request.getParameter("description");
        String jobStipend = request.getParameter("stipend");
        String jobFaculty = request.getParameter("faculty");
        String jobEmail = request.getParameter("email");
        String jobLink = request.getParameter("jobLink");
        String jobQualificationType = request.getParameter("qualifType");
        String jobQualificationName = request.getParameter("qualifName");
        
        Job job = createJob(jobName,companyName,jobType,jobLocation,candicatesRequired,jobRequirements,jobDescription,jobStipend,jobFaculty,jobEmail,jobLink,jobQualificationName,jobQualificationType);
        jfl.create(job);
        RequestDispatcher rd =request.getRequestDispatcher("company-job-created.jsp");
        rd.forward(request, response);
    }

    private Job createJob(String jobName,String companyName, String jobType, String jobLocation, String candicatesRequired, String jobRequirements, String jobDescription, String jobStipend,String jobFaculty,String jobEmail,String jobLink,String jobQualificationName,String jobQualificationType) {
    
        Job job = new Job();
        job.setCreationDate(new Date());
        job.setJobDescription(jobDescription);
        job.setJobLocation(jobLocation);
        job.setJobNumberOfCandicates(candicatesRequired);
        job.setJobName(jobName);
        job.setJobStipend(jobStipend);
        job.setJobType(jobType);
        job.setCompanyName(companyName);
        job.setJobRequirements(jobRequirements);
        job.setJobFaculty(jobFaculty);
        job.setJobEmail(jobEmail);
        job.setJobLink(jobLink);
        job.setJobQualificationName(jobQualificationName);
        job.setJobQualificationType(jobQualificationType);
        
        return job;
    }

}
