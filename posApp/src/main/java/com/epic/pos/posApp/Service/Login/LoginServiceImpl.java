package com.epic.pos.posApp.Service.Login;

import com.epic.pos.posApp.Dao.Login.LoginDao;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    public LoginDao loginDao;

    @Override
    @Transactional
    public String Login(LoginInputBean loginInputBean) throws Exception {
        return loginDao.Login(loginInputBean);
    }
}
