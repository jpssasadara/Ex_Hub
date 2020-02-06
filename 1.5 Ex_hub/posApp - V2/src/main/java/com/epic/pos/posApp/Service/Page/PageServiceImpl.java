package com.epic.pos.posApp.Service.Page;

import com.epic.pos.posApp.Dao.Page.PageDao;
import com.epic.pos.posApp.Messagebean.Page.PageDataBean;
import com.epic.pos.posApp.Messagebean.Page.PageInputBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PageServiceImpl implements PageService {

    @Autowired
    private PageDao pageDao;
    @Override
    @Transactional
    public List<PageDataBean> getPagesForSection(PageInputBean pageInputBean) {
        return pageDao.getPagesForSection(pageInputBean);
    }
}
