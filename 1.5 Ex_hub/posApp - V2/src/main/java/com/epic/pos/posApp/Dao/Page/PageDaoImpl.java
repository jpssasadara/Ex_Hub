package com.epic.pos.posApp.Dao.Page;

import com.epic.pos.posApp.Mapping.Pageuserrole;
import com.epic.pos.posApp.Messagebean.Page.PageDataBean;
import com.epic.pos.posApp.Messagebean.Page.PageInputBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Repository
public class PageDaoImpl implements PageDao {

    private EntityManager entityManager;

    @Autowired
    public PageDaoImpl(EntityManager entityManager){
        this.entityManager = entityManager;
    }

    @Override
    public List<PageDataBean> getPagesForSection(PageInputBean pageInputBean) {
        List<PageDataBean> pageDataBeans = new ArrayList<PageDataBean>();
        try {
            String Qry = "SELECT pur FROM Pageuserrole pur WHERE pur.page.section.sectioncode = :pagecode AND pur.userrole.id = :userroleid AND pur.page.status.statuscode =:statuscode AND pur.page.dualauth =:dualauth";
            Query theQuery = entityManager.createQuery(Qry);
            theQuery.setParameter("pagecode", pageInputBean.getSection());
            theQuery.setParameter("userroleid", Integer.parseInt(pageInputBean.getUserRole()));
            theQuery.setParameter("statuscode", "ACT");
            theQuery.setParameter("dualauth", true);
            List<Pageuserrole> pageuserrole = theQuery.getResultList();
            // Iterator to traverse the list
            Iterator iterator = pageuserrole.iterator();
            /**
             *     private String PageCode;
             *     private String Description;
             *     private String SectionCode;
             *     private String SectionName;
             *     private String Url;
             */

            while (iterator.hasNext()) {
                PageDataBean pageDataBean = new PageDataBean();
                Pageuserrole pageuserrole1 = (Pageuserrole) iterator.next();

                pageDataBean.setPageCode(pageuserrole1.getPage().getPagecode());
                pageDataBean.setDescription(pageuserrole1.getPage().getDescription());
                pageDataBean.setSectionCode(pageuserrole1.getPage().getSection().getSectioncode());
                pageDataBean.setSectionName(pageuserrole1.getPage().getSection().getDescription());
                pageDataBean.setUrl(pageuserrole1.getPage().getUrl());

                pageDataBeans.add(pageDataBean);
            }
        } catch (Exception e){
            System.out.println("Error => "+e);
        }
        System.out.println("Number of  Pages ========================================> "+pageDataBeans.size());
        return pageDataBeans;
    }
}
/**
 * ArrayList<String> list = new ArrayList<String>();
 *
 *         list.add("A");
 *         list.add("B");
 *         list.add("C");
 *         list.add("D");
 *         list.add("E");
 *
 *         // Iterator to traverse the list
 *         Iterator iterator = list.iterator();
 *
 *         System.out.println("List elements : ");
 *
 *         while (iterator.hasNext())
 *             System.out.print(iterator.next() + " ");
 *
 *         System.out.println()
 *
 */
