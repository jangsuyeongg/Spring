package com.bitcamp.seoul.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//���� Ŭ������ ��Ʈ�ѷ��� �Ǳ� ���ؼ��� Ŭ������ ������ @Controllor������̼��� ����Ѵ�.
@Controller
public class RegisterController {
	RegisterDAO dao = new RegisterDAO();
	
	   //�α���
	   @RequestMapping(value="/loginOk", method=RequestMethod.POST)
	   public ModelAndView loginOk(HttpServletRequest req, RegisterVO vo) {
		   dao.loginSelect(vo);
		   
		   ModelAndView mav = new ModelAndView();
		   
		   if(vo.getLogStatus().equals("Y")) {//�α��μ���
			   HttpSession session = req.getSession();
			   //�̸� �α��λ���
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

