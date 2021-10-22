package com.leaf.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PartnerController {
	
	@RequestMapping("/partnerManagePage")
	public String partnerMain() {
		return "partner/partnerMain";
	}
	@RequestMapping("/partnerManageRegi")
	public String partnerManageRegi() {
		return "partner/partnerRegi";
	}
	@RequestMapping("/partnerChange")
	public ModelAndView employeeChange() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("partner/partnerChange");
		return mav;
	}
	
}
