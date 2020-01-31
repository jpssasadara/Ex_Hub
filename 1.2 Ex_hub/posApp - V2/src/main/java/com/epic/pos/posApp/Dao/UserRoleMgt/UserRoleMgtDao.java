package com.epic.pos.posApp.Dao.UserRoleMgt;

import com.epic.pos.posApp.Mapping.Userrole;
import org.springframework.stereotype.Repository;


public interface UserRoleMgtDao {

    public Userrole findById(int theId);
}
