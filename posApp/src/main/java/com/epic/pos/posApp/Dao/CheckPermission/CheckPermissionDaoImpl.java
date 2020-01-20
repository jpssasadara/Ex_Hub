package com.epic.pos.posApp.Dao.CheckPermission;

import com.epic.pos.posApp.Mapping.Users;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;

@Repository
public class CheckPermissionDaoImpl implements CheckPermissionDao {

    // define field for entitymanager
    private EntityManager entityManager;

    @Autowired
    public CheckPermissionDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }

    @Override
    public boolean HasPermission(String pageUrl, String pageTaskCode, String role) {
        System.out.println("llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll");
        // First check whether user has permission to access this page #################################################
        Boolean pagepermission =false;
        String Qry1 = "SELECT p FROM Pagetaskuserrole p WHERE p.userrole.id = :userroleid AND p.page.url = :pageurl AND p.task.taskcode = :pagetask";
       // Users Pagetaskuserrole = null;
        Query theQuery = entityManager.createQuery(Qry1);
        theQuery.setParameter("userroleid",Integer.parseInt(role));
        theQuery.setParameter("pageurl",pageUrl);
        theQuery.setParameter("pagetask",pageTaskCode);
        if(theQuery.getResultList().size()>0) {
            pagepermission = true;
        }
        // Next check whether user has permission to access this task of this page #####################################
        if(pagepermission == true){
           return true;
        }else{
            return false;
        }
         //return true;
    }
}
