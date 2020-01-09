package com.epic.pos.posApp.RestApis;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("register")
public class RegisterRest {

    @PostMapping("/addNewUser")
    public String add(){
        return "success";
    }
}
