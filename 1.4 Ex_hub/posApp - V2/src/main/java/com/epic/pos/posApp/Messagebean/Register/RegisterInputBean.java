package com.epic.pos.posApp.Messagebean.Register;

public class RegisterInputBean {
    private String username;
    private int userrole;
    private String fullname;
    private String status;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getUserrole() {
        return userrole;
    }

    public void setUserrole(int userrole) {
        this.userrole = userrole;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public RegisterInputBean(String username, int userrole, String fullname, String password, String status) {
        this.username = username;
        this.userrole = userrole;
        this.fullname = fullname;
        this.password = password;
        this.status = status;
    }



}
