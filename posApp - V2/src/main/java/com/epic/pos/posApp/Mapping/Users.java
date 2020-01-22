package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Users generated by hbm2java
 */
@Entity
@Table(name="user"
)
public class Users  implements java.io.Serializable {


     private Long id;
     private Status statusByPasswordstatus;
     private Status statusByStatus;
     private Userrole userrole;
     private String username;
     private Byte attempts;
     private Date expirydate;
     private String fullname;
     private Date lastloggeddate;
     private String password;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private Set<Passwordhistory> passwordhistories = new HashSet<Passwordhistory>(0);

    public Users() {
    }

	
    public Users(Userrole userrole, String username, String password, Date lastupdatedtime, Date createdtime) {
        this.userrole = userrole;
        this.username = username;
        this.password = password;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Users(Status statusByPasswordstatus, Status statusByStatus, Userrole userrole, String username, Byte attempts, Date expirydate, String fullname, Date lastloggeddate, String password, String lastupdateduser, Date lastupdatedtime, Date createdtime, Set<Passwordhistory> passwordhistories) {
       this.statusByPasswordstatus = statusByPasswordstatus;
       this.statusByStatus = statusByStatus;
       this.userrole = userrole;
       this.username = username;
       this.attempts = attempts;
       this.expirydate = expirydate;
       this.fullname = fullname;
       this.lastloggeddate = lastloggeddate;
       this.password = password;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.passwordhistories = passwordhistories;
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
    @JoinColumn(name="PASSWORDSTATUS")
    public Status getStatusByPasswordstatus() {
        return this.statusByPasswordstatus;
    }
    
    public void setStatusByPasswordstatus(Status statusByPasswordstatus) {
        this.statusByPasswordstatus = statusByPasswordstatus;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS")
    public Status getStatusByStatus() {
        return this.statusByStatus;
    }
    
    public void setStatusByStatus(Status statusByStatus) {
        this.statusByStatus = statusByStatus;
    }

@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="USERROLE", nullable=false)
    public Userrole getUserrole() {
        return this.userrole;
    }
    
    public void setUserrole(Userrole userrole) {
        this.userrole = userrole;
    }

    
    @Column(name="USERNAME", nullable=false, length=64)
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    
    @Column(name="ATTEMPTS")
    public Byte getAttempts() {
        return this.attempts;
    }
    
    public void setAttempts(Byte attempts) {
        this.attempts = attempts;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="EXPIRYDATE", length=19)
    public Date getExpirydate() {
        return this.expirydate;
    }
    
    public void setExpirydate(Date expirydate) {
        this.expirydate = expirydate;
    }

    
    @Column(name="FULLNAME", length=100)
    public String getFullname() {
        return this.fullname;
    }
    
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="LASTLOGGEDDATE", length=19)
    public Date getLastloggeddate() {
        return this.lastloggeddate;
    }
    
    public void setLastloggeddate(Date lastloggeddate) {
        this.lastloggeddate = lastloggeddate;
    }

    
    @Column(name="PASSWORD", nullable=false, length=250)
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="users")
    public Set<Passwordhistory> getPasswordhistories() {
        return this.passwordhistories;
    }
    
    public void setPasswordhistories(Set<Passwordhistory> passwordhistories) {
        this.passwordhistories = passwordhistories;
    }




}


