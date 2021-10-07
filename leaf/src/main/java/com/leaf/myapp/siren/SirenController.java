package com.leaf.myapp.siren;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SirenController {
	
	@RequestMapping("/siren")
	public String franchiseRequest() {
		return "siren_Order/siren";
	}
}
