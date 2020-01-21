package com.epic.pos.posApp.Service.Jwt;

import com.epic.pos.posApp.Dao.Login.LoginDao;
import com.epic.pos.posApp.Messagebean.Login.LoginDataBean;

import com.epic.pos.posApp.Service.Login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class JwtUserDetailsService implements UserDetailsService {
	
	@Autowired
	private LoginService userDao;

	@Autowired
	private PasswordEncoder bcryptEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		LoginDataBean user = null;
		try {
			user = userDao.findByUsername(username);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			throw new UsernameNotFoundException("User not found with username: " + username);
		}
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
				new ArrayList<>());
	}

	// this method is for fixing user details to the JWT token for add userid to the JWT token in loginRest Api when generateToken function is called
	public LoginDataBean loadAllDetailsOfLoggedUserByUsername(String username) throws UsernameNotFoundException {
		LoginDataBean user = null;
		try {
			user = userDao.findByUsername(username);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (user == null) {
			throw new UsernameNotFoundException("User not found with username: " + username);
		}
		return user;
	}


	/*public DAOUser save(UserDTO user) {
		DAOUser newUser = new DAOUser();
		newUser.setUsername(user.getUsername());
		newUser.setPassword(bcryptEncoder.encode(user.getPassword()));
		return userDao.save(newUser);
	}*/
}
