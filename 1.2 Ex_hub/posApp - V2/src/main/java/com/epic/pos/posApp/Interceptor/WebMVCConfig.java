package com.epic.pos.posApp.Interceptor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by oa on 6/3/2019.
 */
@Configuration
public class WebMVCConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {

        /**@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Note @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         * There are two type of object creation 1) java Bean
         *                                       2) using new xxx();
         * but all dependency injection (@Autowired) and @Service/@Repository will work with java Bean, if we use these
         * annotations inside our Interceptor we should create its' object as java bean (Type 2) is hte example for that.
         * otherwise we can create interceptors object using new xxx() as (Type 1)
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */

        // ########### Type 1 ############ Testing Interceptors ########################################################
        //##############################################################################################################
        /**registry.addInterceptor(new LogInterceptor())
                .addPathPatterns("/login/GetUserbyUsername/*")
                .addPathPatterns("/Testing")
                .excludePathPatterns("/secure-code/public"); //by default applies to
        registry.addInterceptor(new AuthInterceptor())
                .addPathPatterns("/auth");*/
        //##############################################################################################################
        //##############################################################################################################

        // ########### Type 2 ############ Real Interceptors ###########################################################
        //##############################################################################################################
        registry.addInterceptor(myInterceptor())
                .addPathPatterns("/ViewUser/ADD")  // for register user
                .addPathPatterns("/ViewUser/SEARCH/**")  // for vice user by user name
                .addPathPatterns("/ViewUser/VIEW/**"); // add interceptor for user management page
        //##############################################################################################################
        //##############################################################################################################

    }
    // $$$$$$$$$$$$$$$$ Type 2 bean for interceptor $$$$$$$$$$$$$$$$$$$$$$$$$$$
    @Bean
    public PageTaskAuthInterceptor myInterceptor() {
        return new PageTaskAuthInterceptor();
    }
    //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
   /* @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/ViewUser/VIEW/**")
                .allowedOrigins("http://localhost:4200")
                .allowedMethods("PUT", "DELETE","GET","POST","OPTION")
                .allowedHeaders("Authorization", "header2", "header3")
                .exposedHeaders("header1", "header2")
                .allowCredentials(true).maxAge(3600);
    }*/
   /* public void addCorsMappings(CorsRegistry registry) {
        registry
                .addMapping("/ViewUser/VIEW/**")
                .allowCredentials(true)
        ;
    }*/
}
