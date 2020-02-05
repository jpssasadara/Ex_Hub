package com.epic.pos.posApp.Dao.UserRoleMgt;

import com.epic.pos.posApp.Mapping.Userrole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class UserRoleMgtDaoImpl implements UserRoleMgtDao {

    private EntityManager entityManager;
    @Autowired
    public UserRoleMgtDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }

    @Override
    public Userrole findById(int theId) {
        Userrole theUserRole = null;
        try {
            // get Device
             theUserRole =
                    entityManager.find(Userrole.class, theId);
        }catch (Exception ex){
            System.out.println("Error ==> "+ex);
        }
        // return employee
        return theUserRole;
    }
}
