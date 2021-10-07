package com.bitcamp.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.myapp.service.RegisterService;
import com.bitcamp.myapp.vo.RegisterVO;

@Controller
public class RegisterController {
	@Inject
	RegisterService registerService;
	//�α�����
	@RequestMapping("/login")
	public String login() {
		return "register/login";
	}
	//�α���
	@RequestMapping(value="/loginOk", method=RequestMethod.POST)
	public ModelAndView loginOk(RegisterVO vo, HttpSession session) {
		RegisterVO resultVO = registerService.login(vo);
		ModelAndView mav = new ModelAndView();
		if(resultVO==null) {//�α��� ����
			mav.setViewName("redirect:login");
		}else {//�α��μ���
			session.setAttribute("logid", resultVO.getUserid());
			session.setAttribute("logname", resultVO.getUsername());
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	//�α׾ƿ�
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession s) {
		s.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
}
