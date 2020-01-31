package com.epic.pos.posApp.Service.Section;

import com.epic.pos.posApp.Dao.Section.SectionDao;
import com.epic.pos.posApp.Messagebean.Section.SectionDataBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SectionServiceImpl implements SectionService {
    @Autowired
    private SectionDao sectionDao;
    @Transactional
    @Override
    public List<SectionDataBean> getAllSection() {
        return sectionDao.getAllSection();
    }
}
