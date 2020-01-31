package com.epic.pos.posApp.Dao.Login;

import com.epic.pos.posApp.Mapping.Users;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;


@Repository
public class LoginDaoImpl implements LoginDao {

    // define field for entitymanager
    private EntityManager entityManager;

    @Autowired
    public LoginDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }
    /**
     *  private Long id;
     *      private Status statusByPasswordstatus;
     *      private Status statusByStatus;
     *      private Userrole userrole;
     *      private String username;
     *      private Byte attempts;
     *      private Date expirydate;
     *      private String fullname;
     *      private Date lastloggeddate;
     *      private String password;
     *      private String lastupdateduser;
     *      private Date lastupdatedtime;
     *      private Date createdtime;*/
    @Override
    public String Login(LoginInputBean loginInputBean) throws Exception {
        String Qry = "SELECT u FROM Users u WHERE u.username =:username ";
        Users theuser = null;
        // get User
        Query theQuery = entityManager.createQuery(Qry);
        theQuery.setParameter("username",loginInputBean.getUsername());
        if(theQuery.getResultList().size()>0){
            theuser = (Users) theQuery.getResultList().get(0);
            if(theuser.getPassword().equals(loginInputBean.getPassword())){
                return "yes";
            }else{
                return "not";
            }
        }else{
            return "not";
        }

    }

    @Override
    public LoginDataBean findByUsername(String username) throws Exception{
        String Qry = "SELECT u FROM Users u  WHERE u.username = :usernamek ";
        Users theuser = null;
        // get User
        LoginDataBean loginDataBean = new LoginDataBean();
        Query theQuery = entityManager.createQuery(Qry);
        theQuery.setParameter("usernamek",username);
        if(theQuery.getResultList().size()>0) {
            theuser = (Users) theQuery.getResultList().get(0);
            loginDataBean.setId(theuser.getId());
            loginDataBean.setStatusByPasswordstatus(theuser.getStatusByPasswordstatus().getStatuscode());
            loginDataBean.setStatusByStatus(theuser.getStatusByStatus().getStatuscode());
            loginDataBean.setUserrole(theuser.getUserrole().getId().toString());
            loginDataBean.setUsername(theuser.getUsername());
            loginDataBean.setAttempts(theuser.getAttempts().toString());
            loginDataBean.setExpirydate(theuser.getExpirydate().toString());
            loginDataBean.setFullname(theuser.getFullname());
            loginDataBean.setLastloggeddate(theuser.getLastloggeddate().toString());
            loginDataBean.setPassword(theuser.getPassword());
            loginDataBean.setLastupdateduser(theuser.getLastupdateduser());
            loginDataBean.setLastupdatedtime(theuser.getLastupdatedtime().toString());
            loginDataBean.setCreatedtime(theuser.getCreatedtime().toString());

        }
        return loginDataBean;
    }


}
