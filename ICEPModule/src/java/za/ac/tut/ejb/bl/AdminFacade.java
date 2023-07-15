/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Admin;
import za.ac.tut.entities.Student;

/**
 *
 * @author kgaog
 */
@Stateless
public class AdminFacade extends AbstractFacade<Admin> implements AdminFacadeLocal {
    @PersistenceContext(unitName = "ICEPModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminFacade() {
        super(Admin.class);
    }

    @Override
    public Admin findPassword(String password) {
        Query query = em.createQuery("SELECT a FROM Admin a WHERE a.password =:passw ");
        query.setParameter("passw", password);
        try
        {
            Admin a = (Admin)query.getSingleResult();
            
            return a;
        }
        catch(NoResultException e)
        {
          return null;    
        }
      }
    
}
