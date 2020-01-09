package com.epic.pos.posApp.Dao.Status;

import com.epic.pos.posApp.Mapping.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class StatusDaoImpl implements StatusDao{

    private EntityManager entityManager;
    @Autowired
    public StatusDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }

    @Override
    public Status findById(int theId) {
        Status thestatus = null;
        try {
            // get status
            thestatus =
                    entityManager.find(Status.class, theId);
        }catch (Exception ex){
            System.out.println("Error ==> "+ex);
        }
        // return status
        return thestatus;
    }
}
