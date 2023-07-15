/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Alumni;
import za.ac.tut.entities.Job;

/**
 *
 * @author kgaog
 */
@Local
public interface AlumniFacadeLocal {

    void create(Alumni alumni);

    void edit(Alumni alumni);

    void remove(Alumni alumni);

    Alumni find(Object id);
    
    Alumni findAlumniByStudentNumber(String studentNumber);
    
    List<Job> findJobByQualificationName(String qualification);

    Alumni getPasswordByStudentNumber(String studentNumber);
    
    List<Alumni> findAll();

    List<Alumni> findRange(int[] range);

    int count();
    
}
