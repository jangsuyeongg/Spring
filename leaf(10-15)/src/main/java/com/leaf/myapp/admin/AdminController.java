package com.leaf.myapp.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {	
	
	@RequestMapping("/adminMainPage")
	public String adminmainpage() {
		return "adminHome";
	}
}
