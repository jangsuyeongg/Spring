package com.bitcamp.app.register;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
   
   //@Autowired
   //public RegisterDAO dao;
   public RegisterDAO dao = new RegisterDAO();
   
   //�α�����
   @RequestMapping("/login")
   public String login() {
      return "register/login";
   }
   
   //�α���Ȯ��
   @RequestMapping(value="/loginOk",method=RequestMethod.POST)
   public String loginOk(RegisterVO vo, HttpSession ses) {
      
      ModelAndView mav= new ModelAndView();
      RegisterVO logVo=dao.login(vo);
      //sessionó��
      if(logVo!=null) {
         ses.setAttribute("userid", logVo.getUserid());
         ses.setAttribute("username", logVo.getUsername());
      }
      mav.setViewName("redirect:/");
       
      return "home";
   }
}