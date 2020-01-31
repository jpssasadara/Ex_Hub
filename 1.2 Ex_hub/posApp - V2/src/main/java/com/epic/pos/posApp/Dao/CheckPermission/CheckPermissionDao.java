package com.epic.pos.posApp.Dao.CheckPermission;

public interface CheckPermissionDao {
    public boolean HasPermission(String pageUrl,String pageTaskCode, String role);
}
