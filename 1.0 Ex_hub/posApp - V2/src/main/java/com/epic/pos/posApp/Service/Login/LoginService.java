package com.epic.pos.posApp.Service.Login;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;

public interface LoginService {

    public String Login(LoginInputBean loginInputBean) throws Exception;
    public LoginDataBean findByUsername(String username) throws Exception;

}
