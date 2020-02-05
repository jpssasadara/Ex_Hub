package com.epic.pos.posApp.Service.UserRoleMgt;

import com.epic.pos.posApp.Dao.UserRoleMgt.UserRoleMgtDao;
import com.epic.pos.posApp.Mapping.Userrole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserRoleMgtServiceImpl implements UserRoleMgtService {

    @Autowired
    private UserRoleMgtDao userRoleMgtDao;

    @Override
    @Transactional
    public Userrole findById(int theId) {
        return this.userRoleMgtDao.findById(theId);
    }
}
