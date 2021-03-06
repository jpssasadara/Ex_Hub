package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Service.Login.LoginService;
import com.epic.pos.posApp.config.PermissionManagementService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("ViewUser")
public class UserManagementRest {

    @Autowired
    public LoginService loginService;

    @Autowired
    public PermissionManagementService permission;

    // $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Show Rests $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    //##########################################################################################################################
    @GetMapping("VIEW/show")
    public boolean CanShowPage(HttpServletRequest request/*, HttpServletRequestWrapper httpServletRequestWrapper*/){
        //  Catch User Role From JWT Token and Permission which set in filter  -->
        System.out.println(" Authentication Header JWT Token  catch from PageManagementRest  !!! ===> " + request.getHeader("Authorization"));
        String jwtTokenFormHeader = request.getHeader("Authorization").substring(7);//--<
        return permission.HasPermission(request);
    }
    @GetMapping("ADD/show")
    public boolean CanShowAddButton(HttpServletRequest request){
        return permission.HasPermission(request);
    }
    @GetMapping("UPDATE/show")
    public boolean CanShowUpdateButton(HttpServletRequest request){
        return permission.HasPermission(request);
    }
    @GetMapping("DELETE/show")
    public boolean CanShowDeleteButton(HttpServletRequest request){
        return permission.HasPermission(request);
    }
    @GetMapping("SEARCH/show")
    public boolean CanShowSearchButton(HttpServletRequest request){
        return permission.HasPermission(request);
    }

    //#########################################################################################################################

    //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Operation Rest $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    //#########################################################################################################################


    //#########################################################################################################################

    /**localhost:8080/ViewUser/SEARCH/pos2
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

