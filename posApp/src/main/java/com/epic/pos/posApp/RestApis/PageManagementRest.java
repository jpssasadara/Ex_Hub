package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Page.PageDataBean;
import com.epic.pos.posApp.Messagebean.Page.PageInputBean;
import com.epic.pos.posApp.Service.Page.PageService;
import com.epic.pos.posApp.config.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("PageManagement")
public class PageManagementRest {

    @Autowired
    public PageService pageService;

    @Autowired
    public JwtTokenUtil jwttokenUtil;

    @GetMapping("/GetPagesByUserRolePageSection/{pageSection}")
    public List<PageDataBean> GetAllPagesFromUserRoleAndPageSection( @PathVariable String pageSection, HttpServletRequest request){

        // $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Catch User Role From JWT Token $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
        System.out.println(" Authentication Header JWT Token  catch from PageManagementRest  !!! ===> " + request.getHeader("Authorization"));
        String jwtTokenFormHeader = request.getHeader("Authorization").substring(7);
        String userRole = jwttokenUtil.getUserRoleFromToken(jwtTokenFormHeader);
        //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

        PageInputBean pageInputBean = new PageInputBean();
        pageInputBean.setSection(pageSection);
        pageInputBean.setUserRole(userRole);
        return pageService.getPagesForSection(pageInputBean);
    }

}


