package com.epic.pos.posApp.Mapping;
// Generated Aug 28, 2019 1:11:50 PM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Request generated by hbm2java
 */
@Entity
@Table(name="request"
)
public class Request  implements java.io.Serializable {


     private Long id;
     private Device device;
     private Institute institute;
     private Operation operation;
     private Status status;
     private String lastupdateduser;
     private Date createdtime;

    public Request() {
    }

	
    public Request(Device device, Status status, Date createdtime) {
        this.device = device;
        this.status = status;
        this.createdtime = createdtime;
    }
    public Request(Device device, Institute institute, Operation operation, Status status, String lastupdateduser, Date createdtime) {
       this.device = device;
       this.institute = institute;
       this.operation = operation;
       this.status = status;
       this.lastupdateduser = lastupdateduser;
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
    @JoinColumn(name="DEVICE", nullable=false)
    public Device getDevice() {
        return this.device;
    }
    
    public void setDevice(Device device) {
        this.device = device;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="INSTITUTE")
    public Institute getInstitute() {
        return this.institute;
    }
    
    public void setInstitute(Institute institute) {
        this.institute = institute;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="OPERATION")
    public Operation getOperation() {
        return this.operation;
    }
    
    public void setOperation(Operation operation) {
        this.operation = operation;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="LASTUPDATEDUSER", length=64)
    public String getLastupdateduser() {
        return this.lastupdateduser;
    }
    
    public void setLastupdateduser(String lastupdateduser) {
        this.lastupdateduser = lastupdateduser;
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


