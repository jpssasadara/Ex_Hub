package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;
import com.epic.pos.posApp.Service.Register.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("ViewUser")
public class RegisterRest {

    @Autowired
    public RegisterService registerService;

    /** ==> localhost:8080/ViewUser/ADD
     * {
     * 	"username":"jps2",
     * 	"userrole":24,
     * 	"fullname":"sahas thathmira",
     * 	"status":"ACT",
     * 	"password":"sdfgertyryhnjf"
     *
     * }*/
    @PostMapping("/ADD")
    public String add(@RequestBody RegisterInputBean inputBean){
        try{
            if(!registerService.isSameUserName(inputBean.getUsername())) {
                registerService.save(inputBean);
                return "success";
            }else{
                return "This User Name is already Registered";
            }
        }
        catch(Exception ex){
            return "error=> "+ex;
        }

    }
}
