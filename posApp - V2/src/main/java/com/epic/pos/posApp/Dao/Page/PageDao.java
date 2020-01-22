package com.epic.pos.posApp.Dao.Page;

import com.epic.pos.posApp.Messagebean.Page.PageDataBean;
import com.epic.pos.posApp.Messagebean.Page.PageInputBean;

import java.util.List;

public interface PageDao {
    public List<PageDataBean> getPagesForSection(PageInputBean pageInputBean);
}
