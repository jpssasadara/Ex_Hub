package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Passwordhistory generated by hbm2java
 */
@Entity
@Table(name="passwordhistory"
)
public class Passwordhistory  implements java.io.Serializable {


     private Long id;
     private Users users;
     private String password;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;

    public Passwordhistory() {
    }

	
    public Passwordhistory(Users users, Date lastupdatedtime, Date createdtime) {
        this.users = users;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Passwordhistory(Users users, String password, String lastupdateduser, Date lastupdatedtime, Date createdtime) {
       this.users = users;
       this.password = password;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
    }
   
     @Id
     @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="ID", unique=true, nullable=false)
    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="USERS", nullable=false)
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }

    
    @Column(name="PASSWORD")
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    
    @Column(name="LASTUPDATEDUSER", length=64)
    public String getLastupdateduser() {
        return this.lastupdateduser;
    }
    
    public void setLastupdateduser(String lastupdateduser) {
        this.lastupdateduser = lastupdateduser;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="LASTUPDATEDTIME", nullable=false, length=19)
    public Date getLastupdatedtime() {
        return this.lastupdatedtime;
    }
    
    public void setLastupdatedtime(Date lastupdatedtime) {
        this.lastupdatedtime = lastupdatedtime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="CREATEDTIME", nullable=false, length=19)
    public Date getCreatedtime() {
        return this.createdtime;
    }
    
    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }




}


