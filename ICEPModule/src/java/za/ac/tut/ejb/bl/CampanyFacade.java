/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Campany;
import za.ac.tut.entities.Job;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
@Stateless
public class CampanyFacade extends AbstractFacade<Campany> implements CampanyFacadeLocal {
    @PersistenceContext(unitName = "ICEPModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CampanyFacade() {
        super(Campany.class);
    }

    @Override
    public Campany findCompanyByEmail(String email) {
        Query query = em.createQuery("SELECT c FROM Campany c WHERE c.companyEmail =:companyEmail ");
        query.setParameter("companyEmail", email);
        try
        {
            Campany c = (Campany)query.getSingleResult();
            
            return c;
        }
        catch(NoResultException e)
        {
          return null;    
        }    }

    @Override
    public List<Job> findJobsByCompanyName(String companyName) {
       Query query = em.createQuery("SELECT j FROM Job j WHERE j.CompanyName =:companyN ");
       query.setParameter("companyN", companyName);  
       List<Job> jobs = (List<Job>)query.getResultList();
       
        return  jobs;
    }

    @Override
    public void updateJobByName(String jobName) {
       Query query = em.createQuery("UPDATE Job j SET j.jobDescription,j.jobEmail,j.jobFaculty,j.jobLink,j.jobLocation,j.CompanyName,j.jobNumberOfCandicates,j.jobQualificationName,j.jobQualificationType,j.jobRequirements,j.jobStipend,j.jobType WHERE j.jobName = :jobN ");
       query.setParameter("jobN", jobName);
       query.executeUpdate();
    
    }

    @Override
    public void removeJobByName(String jobName) {
       Query query = em.createQuery("DELETE FROM Job j WHERE j.jobName = :jobN");
       query.setParameter("jobN", jobName);
       query.executeUpdate();
    }

    @Override
    public Campany getCompanyPasswordByEmail(String companyEmail) {
       Query query = em.createQuery("SELECT c FROM Campany c WHERE c.companyEmail =:companyEmai");
       query.setParameter("companyEmai", companyEmail); 
       Campany company = (Campany)query.getSingleResult();
        
       return company;     
    }

  
}
