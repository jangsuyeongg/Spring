package com.bitcamp.home;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
   @RequestMapping("/ajax")
   public String ajaxStart() {
      return "ajax/ajaxView";
   }
   @RequestMapping(value="/ajaxStr", method=RequestMethod.GET, produces="application/text;charset=UTF-8")
   @ResponseBody
   public String ajaxString(int num,String name) {
      System.out.println("num="+num+", name="+name);
      return "<h1>번호="+num+", 이름="+name+"</h1>";
   }
   @RequestMapping(value="/ajaxList") 
   @ResponseBody
   public List<TestVO> ajaxList(TestVO vo) {
      List<TestVO> list = new ArrayList<TestVO>();
      list.add(vo);
      
      list.add(new TestVO(200, "haha", "하하"));
      list.add(new TestVO(300, "tada", "짜잔"));
      
      return list;
   }
   @RequestMapping(value="/ajaxObject")
   @ResponseBody
   public TestVO ajaxObject() {
      return new TestVO(500, "bogum", "박보검");
   }
   @RequestMapping("/ajaxMap")
   @ResponseBody
   public HashMap<String, TestVO> ajaxMap() {
	   HashMap<String, TestVO> hm = new HashMap<String, TestVO>();
	   hm.put("k1", new TestVO(1000, "suyeong","수영"));
	   hm.put("k2", new TestVO(2000, "song","중기"));
	   hm.put("k3", new TestVO(3000, "park","서준"));
	   
	   return hm;
	   
   }
   @RequestMapping(value="/ajaxJson", produces="application/text;charset=UTF-8")
   @ResponseBody
   public String ajaxJson() {
	   int no = 1234;
	   String username = "박서준";
	   String tel = "010-1234-9999";
	   String addr ="서울시 구로구 수영로";
	   
	   //데이터를 문자열로 만든다.
	   String jsonData = "{\"no\":\""+no+"\",\"username\":\""+username+"\"";
       jsonData +=",\"tel\":\""+tel+"\",\"addr\":\""+addr+"\"}";

       System.out.println(jsonData);

	   return jsonData;
			   
   }
}













