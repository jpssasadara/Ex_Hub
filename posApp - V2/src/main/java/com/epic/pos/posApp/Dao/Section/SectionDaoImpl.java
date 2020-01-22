package com.epic.pos.posApp.Dao.Section;

import com.epic.pos.posApp.Mapping.Section;
import com.epic.pos.posApp.Messagebean.Section.SectionDataBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Repository
public class SectionDaoImpl implements SectionDao {

    private EntityManager entityManager;
    @Autowired
    public SectionDaoImpl(EntityManager theEntityManager){
        this.entityManager =theEntityManager;
    }

    @Override
    public List<SectionDataBean> getAllSection() {
        List<SectionDataBean> SectionDataBeanList= new ArrayList<SectionDataBean>();
        int count =0;
        try {
            String Qry = "FROM Section";
            Query theQuery = entityManager.createQuery(Qry);
            List<Section> sectionList;
            sectionList = theQuery.getResultList();
            System.out.println("ssssssssssssssssssssssssssssssssssssssssss=> "+sectionList.size());
            while(count < sectionList.size()){
                SectionDataBean databean = new SectionDataBean();
                databean.setSectioncode(sectionList.get(count).getSectioncode());
                databean.setDecription(sectionList.get(count).getDescription());
                SectionDataBeanList.add(databean);
                count++;
             }
        } catch(Exception ex){
            System.out.println("Error => "+ex);
        }
        return SectionDataBeanList;
    }
}
