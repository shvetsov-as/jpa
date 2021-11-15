/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab5;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author User
 */
@Stateless
public class ParameterFacade extends AbstractFacade<Parameter> implements ParameterFacadeLocal {

    @PersistenceContext(unitName = "Lab5J200NewPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ParameterFacade() {
        super(Parameter.class);
    }
    
}
