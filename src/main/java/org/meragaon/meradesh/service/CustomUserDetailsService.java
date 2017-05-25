
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

		SimpleGrantedAuthority  g = new SimpleGrantedAuthority("ROLE_USER");
		UserDetails u = new User(username, "rahul2015", true, true, true, true, Arrays.asList(g));
		return u;
	}
}
