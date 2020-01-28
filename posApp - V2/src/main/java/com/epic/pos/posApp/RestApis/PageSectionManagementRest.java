package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Section.SectionDataBean;
import com.epic.pos.posApp.Service.Section.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200",allowedHeaders = "Authorization")
@RequestMapping("pageSection")
public class PageSectionManagementRest {

    @Autowired
    public SectionService sectionService;

    /**localhost:8080/pageSection/AllSection
    *Response ==>
     * [
     *     {
     *         "sectioncode": "ADMINSEC",
     *         "decription": "Admin Section"
     *     },
     *     {
     *         "sectioncode": "CASESEC",
     *         "decription": "Case Section"
     *     },
     */
    @GetMapping("/AllSection")
    public List<SectionDataBean> getAllPageSection(HttpServletRequest request){
        System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR => "+request.getHeader("Authorization"));
        return sectionService.getAllSection();
    }


}
