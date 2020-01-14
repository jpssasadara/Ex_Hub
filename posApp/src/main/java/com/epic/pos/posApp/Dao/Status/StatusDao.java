package com.epic.pos.posApp.Dao.Status;

import com.epic.pos.posApp.Mapping.Status;

public interface StatusDao {

    public Status findById(String theId) throws Exception;
}
