package com.epic.pos.posApp.Dao.Register;

import com.epic.pos.posApp.Mapping.Users;
import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;
import com.epic.pos.posApp.Service.UserRoleMgt.UserRoleMgtService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;

public class RegisterDaoImpl implements RegisterDao {

    // define field for entitymanager
    private EntityManager entityManager;
    @Autowired
    public RegisterDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }
    @Autowired
    public UserRoleMgtService userRoleMgtService;

    @Override
    public void save(RegisterInputBean inputBean) {
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
        //set data to the map class
        Users user = new Users();
        user.setUserrole(userRoleMgtService.findById(inputBean.getUserrole()));
       /* device.setId(inputBean.getId());
        device.setImei(inputBean.getImei());
        device.setSerial(inputBean.getSerial());
        device.setInstance(instanceDao.findById(inputBean.getInstanceid()));
        device.setInstitute(instituteDao.findById(inputBean.getInstituteid()));
        device.setRegistered(inputBean.getRegistered());
        // save or update the employee
        Device obj = entityManager.merge(device);

        device.setId(null);
        device.setImei("");
        device.setSerial("");
        device.setInstance(null);
        device.setInstitute(null);
        device.setRegistered("");*/
    }
}
