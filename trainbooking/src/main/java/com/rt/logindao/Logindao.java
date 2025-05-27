package com.rt.logindao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class Logindao {
	@Autowired
	JdbcTemplate template;

	public boolean loginform(String username, String password, String role) {
		try {
			Object[] args = { username, password, role };
			int result = template.queryForObject(
					"select count(*) from logintable where username = ? and password = ? and role = ?", Integer.class,
					args);
			return result == 1;
		} catch (Exception e) {
			// Log the error if needed
			e.printStackTrace(); // Logging for debugging
		}
		return false;
	}

}
