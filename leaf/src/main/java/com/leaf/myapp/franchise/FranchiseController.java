package com.leaf.myapp.franchise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FranchiseController {
	
	@RequestMapping("/franchise")
	public String fanchise() {
		return "franchise/franchiseMain";
	}
	@RequestMapping("/storemap")
	public String storemap() {
		return "franchise/storemap";
	}
	@RequestMapping("/franchiseInfo")
	public String franchiseInfo() {
		return "franchise/franchiseInfo";
	}
	@RequestMapping("/franchiseRequest")
	public String franchiseRequest() {
		return "franchise/franchiseRequest";
	}
	@RequestMapping("/franchiseQuestion")
	public String franchiseQuestion() {
		return "franchise/franchiseQuestion";
	}
}
