
package org.meragaon.meradesh.service;

import java.util.Arrays;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailsService implements UserDetailsService {

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {

		System.out.println("user name:"+username);
		SimpleGrantedAuthority  g = new SimpleGrantedAuthority("ROLE_USER");
		UserDetails u = new User(username, "admin", true, true, true, true, Arrays.asList(g));
		return u;
	}
}
