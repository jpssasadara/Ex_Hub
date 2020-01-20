package com.epic.pos.posApp.Interceptor;

import com.epic.pos.posApp.Dao.CheckPermission.CheckPermissionDao;
import com.epic.pos.posApp.Dao.CheckPermission.CheckPermissionDaoImpl;
import com.epic.pos.posApp.Service.CheckPermission.CheckPermissionService;
import com.epic.pos.posApp.config.JwtTokenUtil;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class PageTaskAuthInterceptor  extends HandlerInterceptorAdapter {

    @Autowired
    public CheckPermissionService checkPermissionService;

    @Autowired
    public JwtTokenUtil jwttokenUtil;

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


        System.out.println("Request URL ---> "+request.getRequestURI());
        //System.out.println(" Authentication Header is being Not Used only for Testing !!! " + request.getHeader("TestingHeader"));
        System.out.println(" Authentication Header JWT Token  !!! " + request.getHeader("Authorization"));
        String jwtTokenFormHeader = request.getHeader("Authorization").substring(7);

        // Check Permission ==> input(pageUrl,pageTaskCode,userRole)==> Output--> has Permission or not
        String pageUrl=request.getRequestURI().split("/")[1];
        System.out.println("SA pageUrl => "+pageUrl);
        String pageTaskCode=request.getRequestURI().split("/")[2];
        System.out.println("SA pageTaskCode => "+pageTaskCode);
        String role = jwttokenUtil.getUserRoleFromToken(jwtTokenFormHeader);

        System.out.println("User role get from JWT Token in the Interceptor ++ > "+ jwttokenUtil.getUserRoleFromToken(jwtTokenFormHeader));
                                               // (pageUrl,pageTaskCode,userRole)
        return checkPermissionService.HasPermission(pageUrl,pageTaskCode,role);


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
