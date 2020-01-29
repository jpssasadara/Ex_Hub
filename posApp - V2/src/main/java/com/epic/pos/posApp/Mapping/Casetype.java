package com.epic.pos.posApp.Mapping;
// Generated Aug 13, 2019 3:05:22 PM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Casetype generated by hbm2java
 */
@Entity
@Table(name="casetype"
)
public class Casetype  implements java.io.Serializable {


     private String casetypecode;
     private Casecategory casecategory;
     private Status status;
     private String description;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private Set<Customersupportcase> customersupportcases = new HashSet<Customersupportcase>(0);

    public Casetype() {
    }

	
    public Casetype(String casetypecode, Casecategory casecategory, Status status, Date lastupdatedtime, Date createdtime) {
        this.casetypecode = casetypecode;
        this.casecategory = casecategory;
        this.status = status;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Casetype(String casetypecode, Casecategory casecategory, Status status, String description, String lastupdateduser, Date lastupdatedtime, Date createdtime, Set<Customersupportcase> customersupportcases) {
       this.casetypecode = casetypecode;
       this.casecategory = casecategory;
       this.status = status;
       this.description = description;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.customersupportcases = customersupportcases;
    }
   
     @Id

    
    @Column(name="CASETYPECODE", unique=true, nullable=false, length=16)
    public String getCasetypecode() {
        return this.casetypecode;
    }
    
    public void setCasetypecode(String casetypecode) {
        this.casetypecode = casetypecode;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="CASECATEGORY", nullable=false)
    public Casecategory getCasecategory() {
        return this.casecategory;
    }
    
    public void setCasecategory(Casecategory casecategory) {
        this.casecategory = casecategory;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="DESCRIPTION", length=64)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="casetype")
    public Set<Customersupportcase> getCustomersupportcases() {
        return this.customersupportcases;
    }
    
    public void setCustomersupportcases(Set<Customersupportcase> customersupportcases) {
        this.customersupportcases = customersupportcases;
    }




}

