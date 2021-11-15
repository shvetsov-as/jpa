/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab5;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author User
 */
@Local
public interface ParameterFacadeLocal {

    void create(Parameter parameter);

    void edit(Parameter parameter);

    void remove(Parameter parameter);

    Parameter find(Object id);

    List<Parameter> findAll();

    List<Parameter> findRange(int[] range);

    int count();
    
}
