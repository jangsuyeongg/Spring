package com.bitcamp.seoul.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//현재 클래스가 컨트롤러가 되기 위해서는 클래스명 이전에 @Controllor어노테이션을 기술한다.
@Controller
public class RegisterController {
	RegisterDAO dao = new RegisterDAO();
	
	   //로그인
	   @RequestMapping(value="/loginOk", method=RequestMethod.POST)
	   public ModelAndView loginOk(HttpServletRequest req, RegisterVO vo) {
		   dao.loginSelect(vo);
		   
		   ModelAndView mav = new ModelAndView();
		   
		   if(vo.getLogStatus().equals("Y")) {//로그인성공
			   HttpSession session = req.getSession();
			   //이름 로그인상태
			   session.setAttribute("logname", vo.getUsername());
			   session.setAttribute("logid", vo.getUserid());
			   session.setAttribute("logStatus", vo.getLogStatus());
			   mav.setViewName("/loginOk");
		   }else {
			   mav.setViewName("/loginOk");
			   
		   }
		  return mav;   
	   }
	   @RequestMapping("/logout")
	   public ModelAndView logout(HttpSession session) {
		   session.invalidate();
		   ModelAndView mav = new ModelAndView();
		   mav.setViewName("redirect:/");
		   return mav;
	   }
	   
	   
	   
}

