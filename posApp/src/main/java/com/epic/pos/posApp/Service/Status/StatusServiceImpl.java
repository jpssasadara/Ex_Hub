package com.epic.pos.posApp.Service.Status;

import com.epic.pos.posApp.Dao.Status.StatusDao;
import com.epic.pos.posApp.Mapping.Status;
import com.epic.pos.posApp.Mapping.Userrole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StatusServiceImpl implements StatusService {
    @Autowired
    public StatusDao statusDao;
    @Transactional
    @Override
    public Status findById(String theId) throws Exception{
       return statusDao.findById(theId);
    }
}
