package com.leaf.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminSalesController {
	
	@RequestMapping("/adminSalesMainPage")
	public String adminSales() {
		return "salesChart/adminSales";
	}
}