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
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Job;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
@Stateless
public class AlumniFacade extends AbstractFacade<Alumni> implements AlumniFacadeLocal {
    @PersistenceContext(unitName = "ICEPModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AlumniFacade() {
        super(Alumni.class);
    }

    @Override
    public Alumni findAlumniByStudentNumber(String studentNumber) {
        Query query = em.createQuery("SELECT a FROM Alumni a WHERE a.studentNumber =:studNumber ");
        query.setParameter("studNumber", studentNumber);
        try
        {
            Alumni s = (Alumni)query.getSingleResult();
            
            return s;
        }
        catch(NoResultException e)
        {
          return null;    
        }    
    }

    @Override
    public List<Job> findJobByQualificationName(String qualification) {
       Query query = em.createQuery("SELECT j FROM Job j WHERE j.jobQualificationName =:qualificationName ");
       query.setParameter("qualificationName", qualification); 
       List<Job> jobs = (List<Job>)query.getResultList();
        
       return jobs;    }

    @Override
    public Alumni getPasswordByStudentNumber(String studentNumber) {
       Query query = em.createQuery("SELECT a FROM Alumni a WHERE a.studentNumber =:studentN ");
       query.setParameter("studentN", studentNumber); 
       Alumni alumni = (Alumni)query.getSingleResult();
        
       return alumni;     
    }
    
}
