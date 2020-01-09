package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Device generated by hbm2java
 */
@Entity
@Table(name="device"
)
public class Device  implements java.io.Serializable {


     private Long id;
     private Applicationversion applicationversion;
     private City city;
     private Devicecategory devicecategory;
     private Devicemodel devicemodel;
     private Institute institute;
     private Status statusByStatus;
     private Status statusByRplstatus;
     private String imei;
     private String serialno;
     private String uuid;
     private String rplimei;
     private String rplserialno;
     private String simip;
     private String simserial;
     private String latitude;
     private String longitude;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private Set<Terminal> terminals = new HashSet<Terminal>(0);

    public Device() {
    }

	
    public Device(Applicationversion applicationversion, City city, Devicecategory devicecategory, Devicemodel devicemodel, Institute institute, Status statusByStatus, String imei, String serialno, Date lastupdatedtime, Date createdtime) {
        this.applicationversion = applicationversion;
        this.city = city;
        this.devicecategory = devicecategory;
        this.devicemodel = devicemodel;
        this.institute = institute;
        this.statusByStatus = statusByStatus;
        this.imei = imei;
        this.serialno = serialno;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Device(Applicationversion applicationversion, City city, Devicecategory devicecategory, Devicemodel devicemodel, Institute institute, Status statusByStatus, Status statusByRplstatus, String imei, String serialno, String uuid, String rplimei, String rplserialno, String simip, String simserial, String latitude, String longitude, String lastupdateduser, Date lastupdatedtime, Date createdtime, Set<Terminal> terminals) {
       this.applicationversion = applicationversion;
       this.city = city;
       this.devicecategory = devicecategory;
       this.devicemodel = devicemodel;
       this.institute = institute;
       this.statusByStatus = statusByStatus;
       this.statusByRplstatus = statusByRplstatus;
       this.imei = imei;
       this.serialno = serialno;
       this.uuid = uuid;
       this.rplimei = rplimei;
       this.rplserialno = rplserialno;
       this.simip = simip;
       this.simserial = simserial;
       this.latitude = latitude;
       this.longitude = longitude;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.terminals = terminals;
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
    @JoinColumn(name="APPLICATIOVERSION", nullable=false)
    public Applicationversion getApplicationversion() {
        return this.applicationversion;
    }
    
    public void setApplicationversion(Applicationversion applicationversion) {
        this.applicationversion = applicationversion;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="CITY", nullable=false)
    public City getCity() {
        return this.city;
    }
    
    public void setCity(City city) {
        this.city = city;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="DEVICECATEGORY", nullable=false)
    public Devicecategory getDevicecategory() {
        return this.devicecategory;
    }
    
    public void setDevicecategory(Devicecategory devicecategory) {
        this.devicecategory = devicecategory;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="DEVICEMODEL", nullable=false)
    public Devicemodel getDevicemodel() {
        return this.devicemodel;
    }
    
    public void setDevicemodel(Devicemodel devicemodel) {
        this.devicemodel = devicemodel;
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
    public Status getStatusByStatus() {
        return this.statusByStatus;
    }
    
    public void setStatusByStatus(Status statusByStatus) {
        this.statusByStatus = statusByStatus;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="RPLSTATUS")
    public Status getStatusByRplstatus() {
        return this.statusByRplstatus;
    }
    
    public void setStatusByRplstatus(Status statusByRplstatus) {
        this.statusByRplstatus = statusByRplstatus;
    }

    
    @Column(name="IMEI", nullable=false, length=32)
    public String getImei() {
        return this.imei;
    }
    
    public void setImei(String imei) {
        this.imei = imei;
    }

    
    @Column(name="SERIALNO", nullable=false, length=64)
    public String getSerialno() {
        return this.serialno;
    }
    
    public void setSerialno(String serialno) {
        this.serialno = serialno;
    }

    
    @Column(name="UUID", length=64)
    public String getUuid() {
        return this.uuid;
    }
    
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    
    @Column(name="RPLIMEI", length=32)
    public String getRplimei() {
        return this.rplimei;
    }
    
    public void setRplimei(String rplimei) {
        this.rplimei = rplimei;
    }

    
    @Column(name="RPLSERIALNO", length=64)
    public String getRplserialno() {
        return this.rplserialno;
    }
    
    public void setRplserialno(String rplserialno) {
        this.rplserialno = rplserialno;
    }

    
    @Column(name="SIMIP", length=16)
    public String getSimip() {
        return this.simip;
    }
    
    public void setSimip(String simip) {
        this.simip = simip;
    }

    
    @Column(name="SIMSERIAL", length=16)
    public String getSimserial() {
        return this.simserial;
    }
    
    public void setSimserial(String simserial) {
        this.simserial = simserial;
    }

    
    @Column(name="LATITUDE", length=16)
    public String getLatitude() {
        return this.latitude;
    }
    
    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    
    @Column(name="LONGITUDE", length=16)
    public String getLongitude() {
        return this.longitude;
    }
    
    public void setLongitude(String longitude) {
        this.longitude = longitude;
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="device")
    public Set<Terminal> getTerminals() {
        return this.terminals;
    }
    
    public void setTerminals(Set<Terminal> terminals) {
        this.terminals = terminals;
    }




}


