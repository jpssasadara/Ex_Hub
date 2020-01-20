package com.epic.pos.posApp.Service.CheckPermission;

public interface CheckPermissionService {
    public boolean HasPermission(String pageUrl,String pageTaskCode, String role);
}
