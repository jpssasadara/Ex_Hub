package com.epic.pos.posApp.Interceptor;

import org.slf4j.LoggerFactory;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by oa on 6/2/2019.
 */
@Component
public class LogInterceptor extends HandlerInterceptorAdapter {
    private final org.slf4j.Logger Logger = LoggerFactory.getLogger(this.getClass());
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
    {

        Logger.info("\n\n\n----------------LogInterceptor PreHandle (Start)--------------------------");
        Logger.info(request.getRemoteAddr()
                +" accessed resource "+request.getRequestURI()+" @ "+getCurrentTime());
        long startTime = System.currentTimeMillis();
        request.setAttribute("startTime",startTime); //inject new attribute 'startTime' in request header
        Logger.info("----------------LogInterceptor PreHandle(End)--------------------------");
        //responseHeader can be modified similiarly as per need

        /*Take action base on incoming IP
        Suppose you want to redirect all ip to auth-failed
        which ip value starts with "192"
        */
        //request.getRemoteAddr().startsWith("192")
        if(request.getRequestURI().contains("/login/GetUserbyUsername")) {
            System.out.println("Request URL ---> "+request.getRequestURI());
            if(request.getHeader("Authentication2").equals("epicPOS")){
                System.out.println("Ok --->>> Authentication Header is verified !!! ");
                return true;
            }else{
                System.out.println("Invalied Authentication Header !!! ");
                return false;
            }
            //System.out.println("IP---"+request.getRemoteUser());
            //System.out.println("IP Address ---> "+request.getLocalAddr());
             //returning false ensure that the request is not
            // further required to be intercepted,
            // response is directly send to the user hereafter.
        }
        System.out.println("request.getRemoteAddr().startsWith(\"192\") "+request.getRemoteAddr());
        response.sendRedirect("/secure-code/public"); //redirect to default
        return  false;
        //return new LogInterceptor().preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {
        Logger.info("\n\n\n----------------LogInterceptor postHandle (Start)--------------------------");
        Logger.info("Request Processing ends on "+getCurrentTime());
        Logger.info("----------------LogInterceptor postHandle (End)--------------------------");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {

        Logger.info("\n\n\n----------------LogInterceptor after view is rendered (Start)--------------------------");

        long endTime = System.currentTimeMillis();
        long startTime=Long.parseLong(request.getAttribute("startTime")+"");
        Logger.info("Total time taken to process request (in milliseconds(ms)) "+(endTime-startTime)+" ms");
        Logger.info("----------------LogInterceptor after view is rendered (End)--------------------------");
    }


    private String getCurrentTime() {
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy 'at' hh:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        return formatter.format(calendar.getTime());
    }

}
