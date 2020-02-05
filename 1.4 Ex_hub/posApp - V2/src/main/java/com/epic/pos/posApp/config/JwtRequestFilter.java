package com.epic.pos.posApp.config;

import com.epic.pos.posApp.Service.CheckPermission.CheckPermissionService;
import com.epic.pos.posApp.Service.Jwt.JwtUserDetailsService;

import io.jsonwebtoken.ExpiredJwtException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class JwtRequestFilter extends OncePerRequestFilter {

	@Autowired
	private JwtUserDetailsService jwtUserDetailsService;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	public CheckPermissionService checkPermissionService;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		System.out.println("print2 Header ==> "); 
		final String requestTokenHeader = request.getHeader("Authorization");
		System.out.println("print2 Header ==> "+requestTokenHeader);
		String username = null;
		String jwtToken = null;
		// JWT Token is in the form "Bearer token". Remove Bearer word and get
		// only the Token
		if (requestTokenHeader != null && requestTokenHeader.startsWith("Bearer ")) {
			jwtToken = requestTokenHeader.substring(7);
			try {
				username = jwtTokenUtil.getUsernameFromToken(jwtToken);
			} catch (IllegalArgumentException e) {
				System.out.println("Unable to get JWT Token");
			} catch (ExpiredJwtException e) {
				System.out.println("JWT Token has expired");
			}
		} else {
			logger.warn("JWT Token does not begin with Bearer String");
		}

		// Once we get the token validate it.
		if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {

			UserDetails userDetails = this.jwtUserDetailsService.loadUserByUsername(username);

			// if token is valid configure Spring Security to manually set
			// authentication
			if (jwtTokenUtil.validateToken(jwtToken, userDetails) /* && HasPermission(request)*/) {

				UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(
						userDetails, null, userDetails.getAuthorities());
				usernamePasswordAuthenticationToken
						.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
				// After setting the Authentication in the context, we specify
				// that the current user is authenticated. So it passes the
				// Spring Security Configurations successfully.
				SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
			}

		}
		//response.addHeader("Authorization", request.getHeader("Authorization"));
		chain.doFilter(request, response);
	}

	/*public boolean HasPermission(HttpServletRequest request){
		System.out.println("Request URL ---> "+request.getRequestURI());
		//System.out.println(" Authentication Header is being Not Used only for Testing !!! " + request.getHeader("TestingHeader"));
		System.out.println(" Authentication Header JWT Token  !!! " + request.getHeader("Authorization"));
		String jwtTokenFormHeader = request.getHeader("Authorization").substring(7);
		String role = jwtTokenUtil.getUserRoleFromToken(jwtTokenFormHeader);
		//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
		//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

		// Check Permission ==> input(pageUrl,pageTaskCode,userRole)==> Output--> has Permission or not
		String pageUrl=request.getRequestURI().split("/")[1];
		System.out.println("SA pageUrl => "+pageUrl);
		String pageTaskCode=request.getRequestURI().split("/")[2];
		System.out.println("SA pageTaskCode => "+pageTaskCode);
		//role = jwttokenUtil.getUserRoleFromToken(jwtTokenFormHeader);

		System.out.println("User role get from JWT Token in the Interceptor ++ > "+ jwtTokenUtil.getUserRoleFromToken(jwtTokenFormHeader));
		// (pageUrl,pageTaskCode,userRole)
		return checkPermissionService.HasPermission(pageUrl,pageTaskCode,role);
	}*/
}


