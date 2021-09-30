package com.bitcamp.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
   
// 컨트롤러 호출(/로 접속) > servlet-context.xml에 만든 jdbc Template instance를 구해서 > Constants 클래스에 static으로 보관 > DAO에서 이용
   
   // 스프링이 서블릿 컨텍스트에 있는 beans의 name(template)과 일치하는 친구가 있으면 자동으로 컨트롤러의 setter를 호출해준다. (@Autowired에 의해)
   public JdbcTemplate template;
   public JdbcTemplate getTemplate() {
      return template;
   }
   @Autowired
   public void setTemplate(JdbcTemplate template) {
      this.template = template;
      // 이를 다른 곳에서도 쓰기 위해 스태틱 변수인 Constants.template에 담는다. 
      Constants.template = template;
   }
   // 위의 코드들로 인해 서블릿 컨텍스트의 name="template"인 빈즈를 쓸 수 있게 된다.
   // 이제 쓰고 싶은 곳에서 Constants.template를 선택하면 된다!


   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Model model) {
      return "home";
   }
   //
   
   
}