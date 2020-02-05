package com.epic.pos.posApp.Service.Register;

import com.epic.pos.posApp.Dao.Register.RegisterDao;
import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    public RegisterDao registerDao;

    @Override
    @Transactional
    public void save(RegisterInputBean inputBean) throws Exception {
        registerDao.save(inputBean);
    }

    @Override
    @Transactional
    public boolean isSameUserName(String username) {
        return registerDao.isSameUserName(username);
    }
}
