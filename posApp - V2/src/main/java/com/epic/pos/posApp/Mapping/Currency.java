package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Currency generated by hbm2java
 */
@Entity
@Table(name="currency"
)
public class Currency  implements java.io.Serializable {


     private String currencycode;
     private Status status;
     private String description;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private String alpha2code;
     private Byte exponent;
     private Set<Terminal> terminals = new HashSet<Terminal>(0);

    public Currency() {
    }

	
    public Currency(String currencycode, Status status, Date lastupdatedtime, Date createdtime) {
        this.currencycode = currencycode;
        this.status = status;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Currency(String currencycode, Status status, String description, String lastupdateduser, Date lastupdatedtime, Date createdtime, String alpha2code, Byte exponent, Set<Terminal> terminals) {
       this.currencycode = currencycode;
       this.status = status;
       this.description = description;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.alpha2code = alpha2code;
       this.exponent = exponent;
       this.terminals = terminals;
    }
   
     @Id

    
    @Column(name="CURRENCYCODE", unique=true, nullable=false, length=16)
    public String getCurrencycode() {
        return this.currencycode;
    }
    
    public void setCurrencycode(String currencycode) {
        this.currencycode = currencycode;
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

    
    @Column(name="ALPHA2CODE", length=25)
    public String getAlpha2code() {
        return this.alpha2code;
    }
    
    public void setAlpha2code(String alpha2code) {
        this.alpha2code = alpha2code;
    }

    
    @Column(name="EXPONENT")
    public Byte getExponent() {
        return this.exponent;
    }
    
    public void setExponent(Byte exponent) {
        this.exponent = exponent;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="currency")
    public Set<Terminal> getTerminals() {
        return this.terminals;
    }
    
    public void setTerminals(Set<Terminal> terminals) {
        this.terminals = terminals;
    }




}

