package com.epic.pos.posApp.Service.Register;

import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;

public interface RegisterService {
    public void save(RegisterInputBean inputBean) throws Exception;
    public boolean isSameUserName(String username);
}
