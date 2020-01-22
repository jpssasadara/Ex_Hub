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

    /**localhost:8080/ViewUserRole/SEARCH/pos2
    * Response ==>
     * {
     *     "id": 39,
     *     "statusByPasswordstatus": "CHA",
     *     "statusByStatus": "ACT",
     *     "userrole": "1",
     *     "username": "pos2",
     *     "attempts": "1",
     *     "expirydate": "2020-06-16 15:50:22.0",
     *     "fullname": "sahas thathmira",
     *     "lastloggeddate": "2020-01-16 15:50:22.0",
     *     "password": "$2a$10$E.afk518YwHpcSEm5C.xjuCukxlaTxLqWE8xW5AtTHbenaifcmJ8K",
     *     "lastupdateduser": "Admin",
     *     "lastupdatedtime": "2020-01-20 21:28:49.0",
     *     "createdtime": "2020-01-16 15:50:22.0"
     * }
     **/
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

