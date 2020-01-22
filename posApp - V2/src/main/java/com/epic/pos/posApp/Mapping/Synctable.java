package com.epic.pos.posApp.Mapping;
// Generated Sep 9, 2019 6:26:28 PM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Synctable generated by hbm2java
 */
@Entity
@Table(name="synctable"
)
public class Synctable  implements java.io.Serializable {


     private Long id;
     private Institute institute;
     private Status status;
     private String operation;
     private String tablename;
     private long recordid;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;

    public Synctable() {
    }

	
    public Synctable(Institute institute, Status status, String operation, String tablename, long recordid, Date lastupdatedtime, Date createdtime) {
        this.institute = institute;
        this.status = status;
        this.operation = operation;
        this.tablename = tablename;
        this.recordid = recordid;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Synctable(Institute institute, Status status, String operation, String tablename, long recordid, String lastupdateduser, Date lastupdatedtime, Date createdtime) {
       this.institute = institute;
       this.status = status;
       this.operation = operation;
       this.tablename = tablename;
       this.recordid = recordid;
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

    
    @Column(name="OPERATION", nullable=false, length=32)
    public String getOperation() {
        return this.operation;
    }
    
    public void setOperation(String operation) {
        this.operation = operation;
    }

    
    @Column(name="TABLENAME", nullable=false, length=64)
    public String getTablename() {
        return this.tablename;
    }
    
    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    
    @Column(name="RECORDID", nullable=false)
    public long getRecordid() {
        return this.recordid;
    }
    
    public void setRecordid(long recordid) {
        this.recordid = recordid;
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


