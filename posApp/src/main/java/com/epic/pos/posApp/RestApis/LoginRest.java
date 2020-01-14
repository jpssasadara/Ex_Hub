package com.epic.pos.posApp.RestApis;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;
import com.epic.pos.posApp.Service.Login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("login")
public class LoginRest {
    @Autowired
    public LoginService loginService;

    @GetMapping("/Testing")
    public String Test(){
        return "Pass Testing";
    }
   /**
    * {
    * 	"username":"jps8",
    * 	"password":"sdfgertyryhnjf"
    *
    * }*/
    @PostMapping("/Login")
    public String Login(@RequestBody LoginInputBean loginInputBean){
        String ReturnValue =null;
        try{
            ReturnValue = loginService.Login(loginInputBean);
        }
        catch(Exception ex){
            ReturnValue = "Not";
        }
        return ReturnValue;
    }


}
