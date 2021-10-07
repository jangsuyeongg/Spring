package com.leaf.myapp.register;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class registerController {
	

@RequestMapping("/registerOk")
public String register() {
	return "register/register";
}

@RequestMapping("/loginOk")
public String login() {
	return "register/login";
}

@RequestMapping("/idOk")
public String idSearch() {
	return "register/id";
}
@RequestMapping("/pwdOk")
public String pwSearch() {
	return "register/pwd";
}
@RequestMapping("/testlogin")
public String testlogin() {
	return "admin/adminmain";
}

}

