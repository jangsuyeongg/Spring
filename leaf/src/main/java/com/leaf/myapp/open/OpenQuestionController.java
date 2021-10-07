package com.leaf.myapp.open;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OpenQuestionController {

	@RequestMapping("/openQuestionPage")
	public String openquestionPage() {
		return "open/openMain";
	}
	
	
	@RequestMapping(value="/openReplyView",method=RequestMethod.POST)
	public ModelAndView openReplyGo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("open/openReply");
		return mav;
	}
}
