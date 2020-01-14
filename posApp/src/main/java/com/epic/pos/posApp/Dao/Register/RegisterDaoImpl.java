package com.epic.pos.posApp.Dao.Register;

import com.epic.pos.posApp.Mapping.Users;
import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;
import com.epic.pos.posApp.Service.Status.StatusService;
import com.epic.pos.posApp.Service.UserRoleMgt.UserRoleMgtService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Repository
public class RegisterDaoImpl implements RegisterDao {

    // define field for entitymanager
    private EntityManager entityManager;
    @Autowired
    public RegisterDaoImpl(EntityManager theEntityManager) {
        entityManager = theEntityManager;
    }
    @Autowired
    public UserRoleMgtService userRoleMgtService;
    @Autowired
    public StatusService statusService;

    @Override
    public void save(RegisterInputBean inputBean) throws Exception {
        /**
         *      private Long id;
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
        // ########################### Date #######################
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //#########################################################

        //set data to the map class
        Users user = new Users();
        user.setStatusByStatus(statusService.findById(inputBean.getStatus()));
        user.setStatusByPasswordstatus(statusService.findById("CHA"));
        user.setUserrole(userRoleMgtService.findById(inputBean.getUserrole()));
        user.setUsername(inputBean.getUsername());
        user.setAttempts((byte) 1);
        //######################### Date (Expirydate)########################
        try {
            Date date=formatter.parse(dtf.format(now.plusMonths(5)));
            user.setExpirydate(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //#######################################################
        user.setFullname(inputBean.getFullname());
        //######################### Date (Lastloggeddate)########################
        try {
            Date date=formatter.parse(dtf.format(now));
            user.setLastloggeddate(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //#######################################################
        user.setPassword(inputBean.getPassword());
        user.setLastupdateduser("Admin");
        //######################### Date (lastupdatedtime)########################
        try {
            Date date=formatter.parse(dtf.format(now));
            user.setLastupdatedtime(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //#######################################################
        //######################### Date (createdtime)########################
        try {
            Date date=formatter.parse(dtf.format(now));
            user.setCreatedtime(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //#######################################################

        // save or update the User
        Users obj = entityManager.merge(user);

    }
}
