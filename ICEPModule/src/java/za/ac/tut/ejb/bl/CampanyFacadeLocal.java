/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Campany;
import za.ac.tut.entities.Job;

/**
 *
 * @author kgaog
 */
@Local
public interface CampanyFacadeLocal {

    void create(Campany campany);

    void edit(Campany campany);

    void remove(Campany campany);

    Campany find(Object id);
    
    Campany findCompanyByEmail(String email);
    
    List<Job> findJobsByCompanyName(String companyName);
    
    void updateJobByName(String jobName);
    
    Campany getCompanyPasswordByEmail(String companyEmail);
    
    void removeJobByName(String jobName);

    List<Campany> findAll();

    List<Campany> findRange(int[] range);

    int count();
    
}
