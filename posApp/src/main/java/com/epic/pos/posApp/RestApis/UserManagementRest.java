package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Service.Login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("ViewUserRole")
public class UserManagementRest {

    @Autowired
    public LoginService loginService;

    @GetMapping("/SEARCH/{username}")
    public LoginDataBean Getuserbyusername(@PathVariable String username){
        LoginDataBean userDetails = null;
        try{
            userDetails = loginService.findByUsername(username);
        }catch(Exception ex){
            userDetails =null;
        }
        return userDetails;

    }
}

