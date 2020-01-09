package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

/**
 * Pagetaskinstance generated by hbm2java
 */
@Entity
@Table(name="pagetaskinstance"
)
public class Pagetaskinstance  implements java.io.Serializable {


     private PagetaskinstanceId id;
     private Instance instance;
     private Pagetask pagetask;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;

    public Pagetaskinstance() {
    }

	
    public Pagetaskinstance(PagetaskinstanceId id, Instance instance, Pagetask pagetask, Date lastupdatedtime, Date createdtime) {
        this.id = id;
        this.instance = instance;
        this.pagetask = pagetask;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Pagetaskinstance(PagetaskinstanceId id, Instance instance, Pagetask pagetask, String lastupdateduser, Date lastupdatedtime, Date createdtime) {
       this.id = id;
       this.instance = instance;
       this.pagetask = pagetask;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="pagetask", column=@Column(name="PAGETASK", nullable=false) ),
        @AttributeOverride(name="instance", column=@Column(name="INSTANCE", nullable=false, length=16) ) } )
    public PagetaskinstanceId getId() {
        return this.id;
    }
    
    public void setId(PagetaskinstanceId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="INSTANCE", nullable=false, insertable=false, updatable=false)
    public Instance getInstance() {
        return this.instance;
    }
    
    public void setInstance(Instance instance) {
        this.instance = instance;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PAGETASK", nullable=false, insertable=false, updatable=false)
    public Pagetask getPagetask() {
        return this.pagetask;
    }
    
    public void setPagetask(Pagetask pagetask) {
        this.pagetask = pagetask;
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


