package com.epic.pos.posApp.Mapping;
// Generated Aug 21, 2019 4:48:27 PM by Hibernate Tools 4.3.1

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Deviceoperation generated by hbm2java
 */
@Entity
@Table(name = "deviceoperation"
)
public class Deviceoperation implements java.io.Serializable {

    private Long id;
    private Applicationversion applicationversion;
    private Device device;
    private String batchid;
    private Instance instance;
    private Institute institute;
    private Operation operation;
    private Status status;
    private String lastupdateduser;
    private Date lastupdatedtime;
    private Date createdtime;
    private String createduser;

    public Deviceoperation() {
    }

    public Deviceoperation(Applicationversion applicationversion, Device device, String batchid, Instance instance, Institute institute, Status status, Date lastupdatedtime, Date createdtime,String createduser) {
        this.applicationversion = applicationversion;
        this.device = device;
        this.batchid = batchid;
        this.instance = instance;
        this.institute = institute;
        this.status = status;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
        this.createduser = createduser;

    }

    public Deviceoperation(Applicationversion applicationversion, Device device, Instance instance, Institute institute, Operation operation, Status status, String lastupdateduser, Date lastupdatedtime, Date createdtime,String createduser) {
        this.applicationversion = applicationversion;
        this.device = device;
        this.instance = instance;
        this.institute = institute;
        this.operation = operation;
        this.status = status;
        this.lastupdateduser = lastupdateduser;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
        this.createduser = createduser;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "ID", unique = true, nullable = false)
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "APPLICATIONVERSION", nullable = false)
    public Applicationversion getApplicationversion() {
        return this.applicationversion;
    }

    public void setApplicationversion(Applicationversion applicationversion) {
        this.applicationversion = applicationversion;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DEVICE", nullable = false)
    public Device getDevice() {
        return this.device;
    }

    public void setDevice(Device device) {
        this.device = device;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "INSTANCE", nullable = false)
    public Instance getInstance() {
        return this.instance;
    }

    public void setInstance(Instance instance) {
        this.instance = instance;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "INSTITUTE", nullable = false)
    public Institute getInstitute() {
        return this.institute;
    }

    public void setInstitute(Institute institute) {
        this.institute = institute;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "OPERATION")
    public Operation getOperation() {
        return this.operation;
    }

    public void setOperation(Operation operation) {
        this.operation = operation;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "STATUS", nullable = false)
    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Column(name = "LASTUPDATEDUSER", length = 64)
    public String getLastupdateduser() {
        return this.lastupdateduser;
    }

    public void setLastupdateduser(String lastupdateduser) {
        this.lastupdateduser = lastupdateduser;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "LASTUPDATEDTIME", nullable = false, length = 19)
    public Date getLastupdatedtime() {
        return this.lastupdatedtime;
    }

    public void setLastupdatedtime(Date lastupdatedtime) {
        this.lastupdatedtime = lastupdatedtime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATEDTIME", nullable = false, length = 19)
    public Date getCreatedtime() {
        return this.createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public String getCreateduser() {
        return this.createduser;
    }

    public void setCreateduser(String createduser) {
        this.createduser = createduser;
    }

    public String getBatchid() {
        return this.batchid;
    }

    public void setBatchid(String batchid) {
        this.batchid = batchid;
    }
}
