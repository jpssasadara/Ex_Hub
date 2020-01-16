package com.epic.pos.posApp.Dao.Login;

import com.epic.pos.posApp.Mapping.Users;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;


public interface LoginDao {

    public String Login(LoginInputBean loginInputBean) throws Exception;
    public LoginDataBean findUserByUsername(String username) throws Exception;


}
