package com.leaf.myapp;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/franHome")
	public String home2() {
		return "franHome";
	}
	
	@RequestMapping("/adminHome")
	public String testlogin() {
		return "adminHome";
	}

	
}
