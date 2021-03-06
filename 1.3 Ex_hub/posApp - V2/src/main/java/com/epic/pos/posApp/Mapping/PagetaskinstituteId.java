package com.epic.pos.posApp.Mapping;
// Generated Jul 30, 2019 11:58:51 AM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PagetaskinstituteId generated by hbm2java
 */
@Embeddable
public class PagetaskinstituteId  implements java.io.Serializable {


     private int pagetask;
     private int institute;

    public PagetaskinstituteId() {
    }

    public PagetaskinstituteId(int pagetask, int institute) {
       this.pagetask = pagetask;
       this.institute = institute;
    }
   


    @Column(name="PAGETASK", nullable=false)
    public int getPagetask() {
        return this.pagetask;
    }
    
    public void setPagetask(int pagetask) {
        this.pagetask = pagetask;
    }


    @Column(name="INSTITUTE", nullable=false)
    public int getInstitute() {
        return this.institute;
    }
    
    public void setInstitute(int institute) {
        this.institute = institute;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof PagetaskinstituteId) ) return false;
		 PagetaskinstituteId castOther = ( PagetaskinstituteId ) other; 
         
		 return (this.getPagetask()==castOther.getPagetask())
 && (this.getInstitute()==castOther.getInstitute());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPagetask();
         result = 37 * result + this.getInstitute();
         return result;
   }   


}


