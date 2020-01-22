package com.epic.pos.posApp.Dao.Register;

import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;

public interface RegisterDao {
    public void save(RegisterInputBean inputBean) throws Exception;
}
