package com.rt.logincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.loginservice.loginservice;

@Controller
public class logincontroller {

	@Autowired
	loginservice ls;
	
	@RequestMapping("/loginpage")
	public String loginform(@RequestParam String username,@RequestParam String password,@RequestParam String role,Model model) {
		 boolean isAdded=ls.loginform(username,password,role);
		 if(isAdded) {
		 		if(role.equals("admin")) {
					return "admin_dashboard";
				}else {
					return "user_dashboard";
				}
		 	}
		 	else{
		 		model.addAttribute("errormsg","unsuccessfully");
		 		return "login";
		 	}
		}
}
