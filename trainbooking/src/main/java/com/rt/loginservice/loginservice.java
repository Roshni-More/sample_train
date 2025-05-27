package com.rt.loginservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.logindao.Logindao;

@Service
public class loginservice {
 @Autowired
 Logindao ld;
	public  boolean loginform(String username, String password, String role) {
		return ld.loginform(username,password,role);
	}

}
