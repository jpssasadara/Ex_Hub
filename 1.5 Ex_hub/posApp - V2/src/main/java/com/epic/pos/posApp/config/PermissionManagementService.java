package com.epic.pos.posApp.config;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.epic.pos.posApp.Service.CheckPermission.CheckPermissionService;

@Component
public class PermissionManagementService {
	
	@Autowired
	private JwtTokenUtil jwtTokenUtil;
	@Autowired
	public CheckPermissionService checkPermissionService;
	
	public boolean HasPermission(HttpServletRequest req){
		
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
