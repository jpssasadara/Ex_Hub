package com.epic.pos.posApp.Mapping;
// Generated Aug 29, 2019 4:48:25 PM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.*;
import java.util.Date;

/**
 * Devicestatus generated by hbm2java
 */
@Entity
@Table(name="devicestatus"
)
public class Devicestatus  implements java.io.Serializable {


     private long id;
     private Device device;
     private Status status;
     private Date lastupdatedtime;
     private Date createdtime;

    public Devicestatus() {
    }

	
    public Devicestatus(Device device, Date lastupdatedtime, Date createdtime) {
        this.device = device;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Devicestatus(Device device, Status status, Date lastupdatedtime, Date createdtime) {
       this.device = device;
       this.status = status;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
    }
   
     @GenericGenerator(name="generator", strategy="foreign", parameters=@Parameter(name="property", value="device"))@Id
     @GeneratedValue(generator="generator")

    
    @Column(name="ID", unique=true, nullable=false)
    public long getId() {
        return this.id;
    }
    
    public void setId(long id) {
        this.id = id;
    }

@OneToOne(fetch=FetchType.LAZY)@PrimaryKeyJoinColumn
    public Device getDevice() {
        return this.device;
    }
    
    public void setDevice(Device device) {
        this.device = device;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS")
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
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


