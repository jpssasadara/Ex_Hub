package com.epic.pos.posApp.Service.Page;

import com.epic.pos.posApp.Messagebean.Page.PageDataBean;
import com.epic.pos.posApp.Messagebean.Page.PageInputBean;

import java.util.List;

public interface PageService {
    public List<PageDataBean> getPagesForSection(PageInputBean pageInputBean);
}
