package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PageuserroleId generated by hbm2java
 */
@Embeddable
public class PageuserroleId  implements java.io.Serializable {


     private String page;
     private int userrole;

    public PageuserroleId() {
    }

    public PageuserroleId(String page, int userrole) {
       this.page = page;
       this.userrole = userrole;
    }
   


    @Column(name="PAGE", nullable=false, length=16)
    public String getPage() {
        return this.page;
    }
    
    public void setPage(String page) {
        this.page = page;
    }


    @Column(name="USERROLE", nullable=false)
    public int getUserrole() {
        return this.userrole;
    }
    
    public void setUserrole(int userrole) {
        this.userrole = userrole;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof PageuserroleId) ) return false;
		 PageuserroleId castOther = ( PageuserroleId ) other; 
         
		 return ( (this.getPage()==castOther.getPage()) || ( this.getPage()!=null && castOther.getPage()!=null && this.getPage().equals(castOther.getPage()) ) )
 && (this.getUserrole()==castOther.getUserrole());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getPage() == null ? 0 : this.getPage().hashCode() );
         result = 37 * result + this.getUserrole();
         return result;
   }   


}

