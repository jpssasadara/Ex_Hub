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
    public boolean HasPermission(String pageUrl, String pageTaskCode, String userName) {
       /* String Qry = "SELECT ptur FROM Pagetaskuserrole ptur  WHERE ptur. ";
        Users Pagetaskuserrole = null;
        // get User
        LoginDataBean loginDataBean = new LoginDataBean();
        Query theQuery = entityManager.createQuery(Qry);
        theQuery.setParameter("usernamek",username);
        if(theQuery.getResultList().size()>0) {
            theuser = (Users) theQuery.getResultList().get(0);*/
        return false;
    }
}
