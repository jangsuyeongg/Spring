package com.bitcamp.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
   
// ��Ʈ�ѷ� ȣ��(/�� ����) > servlet-context.xml�� ���� jdbc Template instance�� ���ؼ� > Constants Ŭ������ static���� ���� > DAO���� �̿�
   
   // �������� ���� ���ؽ�Ʈ�� �ִ� beans�� name(template)�� ��ġ�ϴ� ģ���� ������ �ڵ����� ��Ʈ�ѷ��� setter�� ȣ�����ش�. (@Autowired�� ����)
   public JdbcTemplate template;
   public JdbcTemplate getTemplate() {
      return template;
   }
   @Autowired
   public void setTemplate(JdbcTemplate template) {
      this.template = template;
      // �̸� �ٸ� �������� ���� ���� ����ƽ ������ Constants.template�� ��´�. 
      Constants.template = template;
   }
   // ���� �ڵ��� ���� ���� ���ؽ�Ʈ�� name="template"�� ��� �� �� �ְ� �ȴ�.
   // ���� ���� ���� ������ Constants.template�� �����ϸ� �ȴ�!


   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Model model) {
      return "home";
   }
   //
   
   
}