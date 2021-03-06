package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Merchant generated by hbm2java
 */
@Entity
@Table(name="merchant"
)
public class Merchant  implements java.io.Serializable {


     private Long id;
     private City city;
     private Country country;
     private District district;
     private Institute institute;
     private Mcc mcc;
     private Merchantcustomer merchantcustomer;
     private Province province;
     private Status status;
     private String merchantid;
     private String merchanttype;
     private String description;
     private String contactno;
     private String contactperson;
     private String contactpersonposition;
     private String postalcode;
     private String address1;
     private String address2;
     private String address3;
     private String fax;
     private String email;
     private String remark;
     private String lastupdateduser;
     private Date lastupdatedtime;
     private Date createdtime;
     private String branch;
     private Set<Terminal> terminals = new HashSet<Terminal>(0);

    public Merchant() {
    }

	
    public Merchant(Mcc mcc, Status status, String merchantid, String merchanttype, String description, Date lastupdatedtime, Date createdtime) {
        this.mcc = mcc;
        this.status = status;
        this.merchantid = merchantid;
        this.merchanttype = merchanttype;
        this.description = description;
        this.lastupdatedtime = lastupdatedtime;
        this.createdtime = createdtime;
    }
    public Merchant(City city, Country country, District district, Institute institute, Mcc mcc, Merchantcustomer merchantcustomer, Province province, Status status, String merchantid, String merchanttype, String description, String contactno, String contactperson, String contactpersonposition, String postalcode, String address1, String address2, String address3, String fax, String email, String remark, String lastupdateduser, Date lastupdatedtime, Date createdtime, String branch, Set<Terminal> terminals) {
       this.city = city;
       this.country = country;
       this.district = district;
       this.institute = institute;
       this.mcc = mcc;
       this.merchantcustomer = merchantcustomer;
       this.province = province;
       this.status = status;
       this.merchantid = merchantid;
       this.merchanttype = merchanttype;
       this.description = description;
       this.contactno = contactno;
       this.contactperson = contactperson;
       this.contactpersonposition = contactpersonposition;
       this.postalcode = postalcode;
       this.address1 = address1;
       this.address2 = address2;
       this.address3 = address3;
       this.fax = fax;
       this.email = email;
       this.remark = remark;
       this.lastupdateduser = lastupdateduser;
       this.lastupdatedtime = lastupdatedtime;
       this.createdtime = createdtime;
       this.branch = branch;
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
    @JoinColumn(name="CITY")
    public City getCity() {
        return this.city;
    }
    
    public void setCity(City city) {
        this.city = city;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="COUNTRY")
    public Country getCountry() {
        return this.country;
    }
    
    public void setCountry(Country country) {
        this.country = country;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="DISTRICT")
    public District getDistrict() {
        return this.district;
    }
    
    public void setDistrict(District district) {
        this.district = district;
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
    @JoinColumn(name="MCC", nullable=false)
    public Mcc getMcc() {
        return this.mcc;
    }
    
    public void setMcc(Mcc mcc) {
        this.mcc = mcc;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="MERCHANTCUSTOMER")
    public Merchantcustomer getMerchantcustomer() {
        return this.merchantcustomer;
    }
    
    public void setMerchantcustomer(Merchantcustomer merchantcustomer) {
        this.merchantcustomer = merchantcustomer;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PROVINCE")
    public Province getProvince() {
        return this.province;
    }
    
    public void setProvince(Province province) {
        this.province = province;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STATUS", nullable=false)
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }

    
    @Column(name="MERCHANTID", nullable=false, length=15)
    public String getMerchantid() {
        return this.merchantid;
    }
    
    public void setMerchantid(String merchantid) {
        this.merchantid = merchantid;
    }

    
    @Column(name="MERCHANTTYPE", nullable=false, length=32)
    public String getMerchanttype() {
        return this.merchanttype;
    }
    
    public void setMerchanttype(String merchanttype) {
        this.merchanttype = merchanttype;
    }

    
    @Column(name="DESCRIPTION", nullable=false, length=64)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

    
    @Column(name="CONTACTNO", length=64)
    public String getContactno() {
        return this.contactno;
    }
    
    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    
    @Column(name="CONTACTPERSON", length=256)
    public String getContactperson() {
        return this.contactperson;
    }
    
    public void setContactperson(String contactperson) {
        this.contactperson = contactperson;
    }

    
    @Column(name="CONTACTPERSONPOSITION", length=256)
    public String getContactpersonposition() {
        return this.contactpersonposition;
    }
    
    public void setContactpersonposition(String contactpersonposition) {
        this.contactpersonposition = contactpersonposition;
    }

    
    @Column(name="POSTALCODE", length=16)
    public String getPostalcode() {
        return this.postalcode;
    }
    
    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    
    @Column(name="ADDRESS1", length=64)
    public String getAddress1() {
        return this.address1;
    }
    
    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    
    @Column(name="ADDRESS2", length=64)
    public String getAddress2() {
        return this.address2;
    }
    
    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    
    @Column(name="ADDRESS3", length=64)
    public String getAddress3() {
        return this.address3;
    }
    
    public void setAddress3(String address3) {
        this.address3 = address3;
    }

    
    @Column(name="FAX", length=64)
    public String getFax() {
        return this.fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }

    
    @Column(name="EMAIL", length=256)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="REMARK", length=64)
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
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

    
    @Column(name="BRANCH", length=16)
    public String getBranch() {
        return this.branch;
    }
    
    public void setBranch(String branch) {
        this.branch = branch;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="merchant")
    public Set<Terminal> getTerminals() {
        return this.terminals;
    }
    
    public void setTerminals(Set<Terminal> terminals) {
        this.terminals = terminals;
    }




}


