package com.epic.pos.posApp.RestApis;
import com.epic.pos.posApp.Messagebean.Jwt.JwtResponse;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;
import com.epic.pos.posApp.Messagebean.Login.LoginInputBean;
import com.epic.pos.posApp.Service.Jwt.JwtUserDetailsService;
import com.epic.pos.posApp.Service.Login.LoginService;
import com.epic.pos.posApp.config.JwtTokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
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

    @GetMapping("/GetUserbyUsername/{username}")
    public LoginDataBean Getuserbyusername(@PathVariable String username){
        LoginDataBean userDetails = null;
        try{
            userDetails = loginService.findByUsername(username);
        }catch(Exception ex){
            userDetails =null;
        }
        return userDetails;

    }
    // #################################  JWT Authentication Task ######################################################
    // #################################################################################################################

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private JwtUserDetailsService userDetailsService;

    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    public ResponseEntity<?> createAuthenticationToken(@RequestBody LoginInputBean loginInputBean) throws Exception {

        // Use check whether UserName and PassWord are correct or not
        authenticate(loginInputBean.getUsername(), loginInputBean.getPassword());

        // there is a Query to get User object according to user name then that object has been set to the
        // "UserDetails" => class
        final UserDetails userDetails = userDetailsService
                .loadUserByUsername(loginInputBean.getUsername());
        // Generating the Token using UserDetails object data (Really it has been used only user name(in this example) so we can customized it as we want
        final String token = jwtTokenUtil.generateToken(userDetails);
        // fixed token Response and return the token
        return ResponseEntity.ok(new JwtResponse(token));
    }

    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
    //#################################################### End #########################################################
    //##################################################################################################################
}
