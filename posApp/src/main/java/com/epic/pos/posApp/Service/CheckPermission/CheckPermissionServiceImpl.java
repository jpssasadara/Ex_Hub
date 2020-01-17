package com.epic.pos.posApp.Service.CheckPermission;

import com.epic.pos.posApp.Dao.CheckPermission.CheckPermissionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CheckPermissionServiceImpl implements CheckPermissionService {

    @Autowired
    public CheckPermissionDao checkPermissionDao;
    @Override
    @Transactional
    public boolean HasPermission(String pageUrl, String pageTaskCode, String userName) {
        return checkPermissionDao.HasPermission(pageUrl,pageTaskCode,userName);
    }
}
