package com.epic.pos.posApp.Mapping;
// Generated Aug 29, 2019 11:52:59 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Devicealert generated by hbm2java
 */
@Entity
@Table(name="devicealert"
)
public class Devicealert  implements java.io.Serializable {


     private Long id;
     private Device device;
     private Instance instance;
     private Institute institute;
     private Operation operation;
     private Status status;
     private String imie;
     private String serialno;
     private String lastupdateduser;
     private Date createdtime;

    public Devicealert() {
    }

	
    public Devicealert(Device device, Instance instance, Institute institute, Date createdtime) {
        this.device = device;
        this.instance = instance;
        this.institute = institute;
        this.createdtime = createdtime;
    }
    public Devicealert(Device device, Instance instance, Institute institute, Operation operation, Status status, String imie, String serialno, String lastupdateduser, Date createdtime) {
       this.device = device;
       this.instance = instance;
       this.institute = institute;
       this.operation = operation;
       this.status = status;
       this.imie = imie;
       this.serialno = serialno;
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
    @JoinColumn(name="INSTANCE", nullable=false)
    public Instance getInstance() {
        return this.instance;
    }
    
    public void setInstance(Instance instance) {
        this.instance = instance;
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
    @JoinColumn(name="OPERATION")
    public Operation getOperation() {
        return this.operation;
    }
    
    public void setOperation(Operation operation) {
        this.operation = operation;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS")
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="IMIE", length=17)
    public String getImie() {
        return this.imie;
    }
    
    public void setImie(String imie) {
        this.imie = imie;
    }

    
    @Column(name="SERIALNO", length=64)
    public String getSerialno() {
        return this.serialno;
    }
    
    public void setSerialno(String serialno) {
        this.serialno = serialno;
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


