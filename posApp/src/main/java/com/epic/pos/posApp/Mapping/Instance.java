package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Instance generated by hbm2java
 */
@Entity
@Table(name="instance"
)
public class Instance  implements java.io.Serializable {


     private String instancecode;
     private Country country;
     private Status status;
     private String description;
     private byte[] weblogo;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private Set<Tmpauthrec> tmpauthrecs = new HashSet<Tmpauthrec>(0);
     private Set<Userrole> userroles = new HashSet<Userrole>(0);
     private Set<Pagetaskinstance> pagetaskinstances = new HashSet<Pagetaskinstance>(0);
     private Set<Pageinstance> pageinstances = new HashSet<Pageinstance>(0);
     private Set<Institute> institutes = new HashSet<Institute>(0);

    public Instance() {
    }

	
    public Instance(String instancecode, Country country, Status status, String description, Date lastupdatedtime, Date createdtime) {
        this.instancecode = instancecode;
        this.country = country;
        this.status = status;
        this.description = description;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Instance(String instancecode, Country country, Status status, String description, byte[] weblogo, String lastupdateduser, Date lastupdatedtime, Date createdtime, Set<Tmpauthrec> tmpauthrecs, Set<Userrole> userroles, Set<Pagetaskinstance> pagetaskinstances, Set<Pageinstance> pageinstances, Set<Institute> institutes) {
       this.instancecode = instancecode;
       this.country = country;
       this.status = status;
       this.description = description;
       this.weblogo = weblogo;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.tmpauthrecs = tmpauthrecs;
       this.userroles = userroles;
       this.pagetaskinstances = pagetaskinstances;
       this.pageinstances = pageinstances;
       this.institutes = institutes;
    }
   
     @Id

    
    @Column(name="INSTANCECODE", unique=true, nullable=false, length=16)
    public String getInstancecode() {
        return this.instancecode;
    }
    
    public void setInstancecode(String instancecode) {
        this.instancecode = instancecode;
    }

@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="COUNTRY", nullable=false)
    public Country getCountry() {
        return this.country;
    }
    
    public void setCountry(Country country) {
        this.country = country;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="DESCRIPTION", nullable=false, length=64)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

    
    @Column(name="WEBLOGO")
    public byte[] getWeblogo() {
        return this.weblogo;
    }
    
    public void setWeblogo(byte[] weblogo) {
        this.weblogo = weblogo;
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="instance")
    public Set<Tmpauthrec> getTmpauthrecs() {
        return this.tmpauthrecs;
    }
    
    public void setTmpauthrecs(Set<Tmpauthrec> tmpauthrecs) {
        this.tmpauthrecs = tmpauthrecs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="instance")
    public Set<Userrole> getUserroles() {
        return this.userroles;
    }
    
    public void setUserroles(Set<Userrole> userroles) {
        this.userroles = userroles;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="instance")
    public Set<Pagetaskinstance> getPagetaskinstances() {
        return this.pagetaskinstances;
    }
    
    public void setPagetaskinstances(Set<Pagetaskinstance> pagetaskinstances) {
        this.pagetaskinstances = pagetaskinstances;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="instance")
    public Set<Pageinstance> getPageinstances() {
        return this.pageinstances;
    }
    
    public void setPageinstances(Set<Pageinstance> pageinstances) {
        this.pageinstances = pageinstances;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="instance")
    public Set<Institute> getInstitutes() {
        return this.institutes;
    }
    
    public void setInstitutes(Set<Institute> institutes) {
        this.institutes = institutes;
    }




}

