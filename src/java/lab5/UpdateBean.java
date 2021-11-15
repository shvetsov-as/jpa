/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab5;

import javax.ejb.EJB;
import javax.ejb.Stateless;

/**
 *
 * @author User
 */
@Stateless
public class UpdateBean implements UpdateBeanLocal {

    @EJB
    private ParameterFacadeLocal parameterFacade;

    @Override
    public void addParameter(Parameter parameter) {
        
        parameterFacade.create(parameter);
    }
}
