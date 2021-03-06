package com.epic.pos.posApp.Mapping;
// Generated Aug 29, 2019 5:33:28 PM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Customersupportcase generated by hbm2java
 */
@Entity
@Table(name="customersupportcase"
    , uniqueConstraints = @UniqueConstraint(columnNames="REFERENCENO")
)
public class Customersupportcase  implements java.io.Serializable {


     private Long id;
     private Casetype casetype;
     private Institute institute;
     private Status status;
     private Users users;
     private String description;
     private String referenceno;
     private String remark;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;

    public Customersupportcase() {
    }

	
    public Customersupportcase(Institute institute, Status status, String referenceno, String remark, Date lastupdatedtime, Date createdtime) {
        this.institute = institute;
        this.status = status;
        this.referenceno = referenceno;
        this.remark = remark;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Customersupportcase(Casetype casetype, Institute institute, Status status, Users users, String description, String referenceno, String remark, String lastupdateduser, Date lastupdatedtime, Date createdtime) {
       this.casetype = casetype;
       this.institute = institute;
       this.status = status;
       this.users = users;
       this.description = description;
       this.referenceno = referenceno;
       this.remark = remark;
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
    @JoinColumn(name="CASETYPE")
    public Casetype getCasetype() {
        return this.casetype;
    }
    
    public void setCasetype(Casetype casetype) {
        this.casetype = casetype;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="INSTITUTE", nullable=false)
    public Institute getInstitute() {
        return this.institute;
    }
    
    public void setInstitute(Institute institute) {
        this.institute = institute;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="USERS")
    public Users getUsers() {
        return this.users;
    }
    
    public void setUsers(Users users) {
        this.users = users;
    }

    
    @Column(name="DESCRIPTION", length=64)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

    
    @Column(name="REFERENCENO", unique=true, nullable=false, length=32)
    public String getReferenceno() {
        return this.referenceno;
    }
    
    public void setReferenceno(String referenceno) {
        this.referenceno = referenceno;
    }

    
    @Column(name="REMARK", nullable=false, length=64)
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
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


