package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

/**
 * Pageinstance generated by hbm2java
 */
@Entity
@Table(name="pageinstance"
)
public class Pageinstance  implements java.io.Serializable {


     private PageinstanceId id;
     private Instance instance;
     private Page page;
     private Status status;
     private boolean dualauth;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;

    public Pageinstance() {
    }

	
    public Pageinstance(PageinstanceId id, Instance instance, Page page, Status status, boolean dualauth, Date lastupdatedtime, Date createdtime) {
        this.id = id;
        this.instance = instance;
        this.page = page;
        this.status = status;
        this.dualauth = dualauth;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Pageinstance(PageinstanceId id, Instance instance, Page page, Status status, boolean dualauth, String lastupdateduser, Date lastupdatedtime, Date createdtime) {
       this.id = id;
       this.instance = instance;
       this.page = page;
       this.status = status;
       this.dualauth = dualauth;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="page", column=@Column(name="PAGE", nullable=false, length=16) ),
        @AttributeOverride(name="instance", column=@Column(name="INSTANCE", nullable=false, length=16) ) } )
    public PageinstanceId getId() {
        return this.id;
    }
    
    public void setId(PageinstanceId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="INSTANCE", nullable=false, insertable=false, updatable=false)
    public Instance getInstance() {
        return this.instance;
    }
    
    public void setInstance(Instance instance) {
        this.instance = instance;
    }

@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="PAGE", nullable=false, insertable=false, updatable=false)
    public Page getPage() {
        return this.page;
    }
    
    public void setPage(Page page) {
        this.page = page;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="DUALAUTH", nullable=false)
    public boolean isDualauth() {
        return this.dualauth;
    }
    
    public void setDualauth(boolean dualauth) {
        this.dualauth = dualauth;
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


