package com.epic.pos.posApp.RestApis;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("login")
public class LoginRest {
    @GetMapping("/Testing")
    public String Test(){
        return "Pass Testing";
    }
}
