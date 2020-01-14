package com.epic.pos.posApp.Dao.Status;

import com.epic.pos.posApp.Mapping.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;

@Repository
public class StatusDaoImpl implements StatusDao{

    private EntityManager entityManager;
    @Autowired
    public StatusDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }

    @Override
    public Status findById(String theId) throws Exception {
        String Qry = "SELECT s FROM Status s WHERE s.statuscode =:code ";
        Status thestatus = null;
            // get status
            Query theQuery = entityManager.createQuery(Qry);
            theQuery.setParameter("code",theId);
            thestatus = (Status) theQuery.getResultList().get(0);
        // return status
        return thestatus;
    }
}
