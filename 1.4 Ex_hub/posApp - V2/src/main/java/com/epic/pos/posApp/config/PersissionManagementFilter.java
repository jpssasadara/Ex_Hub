package com.epic.pos.posApp.config;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import com.epic.pos.posApp.Service.CheckPermission.CheckPermissionService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
// Does Not User insted of this we have implemented a "Permission Management Service"
//VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVv
public class PersissionManagementFilter implements Filter {
	@Autowired
	private JwtTokenUtil jwtTokenUtil;
	@Autowired
	public CheckPermissionService checkPermissionService;
	@Override
	public void doFilter(ServletRequest request,
						ServletResponse response,
						FilterChain chain) throws IOException, ServletException
	{
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		
		System.out.println(req.getRequestURI()+" Authentication Header JWT Token  !!!> " + req.getHeader("Authorization"));
		// "/ViewUser/ADD","/login/authenticate","/PageManagement/GetPagesByUserRolePageSection/**","/pageSection/AllSection"
		if(! req.getRequestURI().toString().equals("/ViewUser/ADD") && ! req.getRequestURI().toString().equals("/login/authenticate") && ! req.getRequestURI().contains("/PageManagement/GetPagesByUserRolePageSection")  && ! req.getRequestURI().toString().equals("/pageSection/AllSection"))
		{
			System.out.println("INside "+req.getRequestURI());
			if(this.HasPermission(request)) {
				// ##################### Add new Request Header ###################################
				 MutableHttpServletRequest mutableRequest = new MutableHttpServletRequest(req);
				    mutableRequest.putHeader("Haspermission", "Yes");
				    System.out.println("New Header => "+mutableRequest.getHeader("Haspermission")); 
				//#################################################################################
				    chain.doFilter(mutableRequest, response);
				//chain.doFilter(request, response);
			}else {
				// ##################### Add new Request Header ###################################
				 MutableHttpServletRequest mutableRequest = new MutableHttpServletRequest(req);
				    mutableRequest.putHeader("Haspermission", "No");
				   System.out.println("New Header => "+mutableRequest.getHeader("Haspermission")); 
				 //#################################################################################
				    chain.doFilter(mutableRequest, response);
				//chain.doFilter(request, response);
			}
			
		}else {
			chain.doFilter(request, response);
		}
		System.out.println("Request-- URI is: " + req.getRequestURI());
		System.out.println("Response Status Code is: " + res.getStatus());
	}
	
	public boolean HasPermission(ServletRequest request){
		HttpServletRequest req = (HttpServletRequest) request;
		System.out.println("Request URL ---> "+req.getRequestURI());
		//System.out.println(" Authentication Header is being Not Used only for Testing !!! " + request.getHeader("TestingHeader"));
		System.out.println(" Authentication Header JWT Token  !!! " + req.getHeader("Authorization"));
		String jwtTokenFormHeader = req.getHeader("Authorization").substring(7);
		String role = jwtTokenUtil.getUserRoleFromToken(jwtTokenFormHeader);
		//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
		//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

		// Check Permission ==> input(pageUrl,pageTaskCode,userRole)==> Output--> has Permission or not
		String pageUrl=req.getRequestURI().split("/")[1];
		System.out.println("SA pageUrl => "+pageUrl);
		String pageTaskCode=req.getRequestURI().split("/")[2];
		System.out.println("SA pageTaskCode => "+pageTaskCode);
		//role = jwttokenUtil.getUserRoleFromToken(jwtTokenFormHeader);

		System.out.println("User role get from JWT Token in the Interceptor ++ > "+ jwtTokenUtil.getUserRoleFromToken(jwtTokenFormHeader));
		// (pageUrl,pageTaskCode,userRole)
		return checkPermissionService.HasPermission(pageUrl,pageTaskCode,role);
	}
	
}


//#############################################################################################

//  HttpServletRequestWrapper=>  Main difference between Interceptor and filter
// it mean we can change in coming Request
//############################################################################################
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
// in here we have change in coming Request header
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
final class MutableHttpServletRequest extends HttpServletRequestWrapper {
    // holds custom header and value mapping
    private final Map<String, String> customHeaders;

    public MutableHttpServletRequest(HttpServletRequest request){
        super(request);
        this.customHeaders = new HashMap<String, String>();
    }

    public void putHeader(String name, String value){
        this.customHeaders.put(name, value);
    }

    public String getHeader(String name) {
        // check the custom headers first
        String headerValue = customHeaders.get(name);

        if (headerValue != null){
            return headerValue;
        }
        // else return from into the original wrapped object
        return ((HttpServletRequest) getRequest()).getHeader(name);
    }

    public Enumeration<String> getHeaderNames() {
        // create a set of the custom header names
        Set<String> set = new HashSet<String>(customHeaders.keySet());

        // now add the headers from the wrapped request object
        @SuppressWarnings("unchecked")
        Enumeration<String> e = ((HttpServletRequest) getRequest()).getHeaderNames();
        while (e.hasMoreElements()) {
            // add the names of the request headers into the list
            String n = e.nextElement();
            set.add(n);
        }

        // create an enumeration from the set and return
        return Collections.enumeration(set);
    }
}

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$