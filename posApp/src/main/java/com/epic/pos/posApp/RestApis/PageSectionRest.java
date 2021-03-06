package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Section.SectionDataBean;
import com.epic.pos.posApp.Service.Section.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("pageSection")
public class PageSectionRest {

    @Autowired
    public SectionService sectionService;

    @GetMapping("/AllSection")
    public List<SectionDataBean> getAllPageSection(){
        return sectionService.getAllSection();
    }
    /*@GetMapping("/AllSection2/{ff}/{hh}")
    public String getAllPagekSection(@PathVariable String ff , @PathVariable String hh){
        return "sasadara"+ff+" "+hh;
    }*/

}
