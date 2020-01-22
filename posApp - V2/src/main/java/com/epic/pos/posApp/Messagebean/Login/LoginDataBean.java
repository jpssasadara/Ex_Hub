package com.epic.pos.posApp.Messagebean.Login;

public class LoginDataBean {
    private Long id;
    private String statusByPasswordstatus;
    private String statusByStatus;
    private String userrole;
    private String username;
    private String attempts;
    private String expirydate;
    private String fullname;
    private String lastloggeddate;
    private String password;
    private String lastupdateduser;
    private String lastupdatedtime;
    public LoginDataBean(){}
    public LoginDataBean(Long id, String statusByPasswordstatus, String statusByStatus, String userrole, String username, String attempts, String expirydate, String fullname, String lastloggeddate, String password, String lastupdateduser, String lastupdatedtime, String createdtime) {
        this.setId(id);
        this.setStatusByPasswordstatus(statusByPasswordstatus);
        this.setStatusByStatus(statusByStatus);
        this.setUserrole(userrole);
        this.setUsername(username);
        this.setAttempts(attempts);
        this.setExpirydate(expirydate);
        this.setFullname(fullname);
        this.setLastloggeddate(lastloggeddate);
        this.setPassword(password);
        this.setLastupdateduser(lastupdateduser);
        this.setLastupdatedtime(lastupdatedtime);
        this.setCreatedtime(createdtime);
    }

    private String createdtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStatusByPasswordstatus() {
        return statusByPasswordstatus;
    }

    public void setStatusByPasswordstatus(String statusByPasswordstatus) {
        this.statusByPasswordstatus = statusByPasswordstatus;
    }

    public String getStatusByStatus() {
        return statusByStatus;
    }

    public void setStatusByStatus(String statusByStatus) {
        this.statusByStatus = statusByStatus;
    }

    public String getUserrole() {
        return userrole;
    }

    public void setUserrole(String userrole) {
        this.userrole = userrole;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAttempts() {
        return attempts;
    }

    public void setAttempts(String attempts) {
        this.attempts = attempts;
    }

    public String getExpirydate() {
        return expirydate;
    }

    public void setExpirydate(String expirydate) {
        this.expirydate = expirydate;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getLastloggeddate() {
        return lastloggeddate;
    }

    public void setLastloggeddate(String lastloggeddate) {
        this.lastloggeddate = lastloggeddate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastupdateduser() {
        return lastupdateduser;
    }

    public void setLastupdateduser(String lastupdateduser) {
        this.lastupdateduser = lastupdateduser;
    }

    public String getLastupdatedtime() {
        return lastupdatedtime;
    }

    public void setLastupdatedtime(String lastupdatedtime) {
        this.lastupdatedtime = lastupdatedtime;
    }

    public String getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(String createdtime) {
        this.createdtime = createdtime;
    }
}

