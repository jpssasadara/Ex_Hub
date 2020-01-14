package com.epic.pos.posApp.RestApis;

import com.epic.pos.posApp.Messagebean.Register.RegisterInputBean;
import com.epic.pos.posApp.Service.Register.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("register")
public class RegisterRest {

    @Autowired
    public RegisterService registerService;

    /**
     * {
     * 	"username":"jps2",
     * 	"userrole":24,
     * 	"fullname":"sahas thathmira",
     * 	"status":"ACT",
     * 	"password":"sdfgertyryhnjf"
     *
     * }*/
    @PostMapping("/addNewUser")
    public String add(@RequestBody RegisterInputBean inputBean){
        try{
            registerService.save(inputBean);
            return "success";
        }
        catch(Exception ex){
            return "error=> "+ex;
        }

    }
}
