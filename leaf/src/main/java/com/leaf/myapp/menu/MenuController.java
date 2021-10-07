package com.leaf.myapp.menu;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MenuController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@RequestMapping("/menu_Food")
	   public String MenuFood() {
		   return "Consumer/menu_food";
	   }
	@RequestMapping("/menu_Beverage")
	   public String MenuBeverage() {
		   return "Consumer/menu_beverage";
	   }
	@RequestMapping("/menu_detail")
		public String MenuDetail() {
			return "Consumer/menu_detail";
	}
	@RequestMapping("/purchase")
		public String Purchase() {
			return "Store/purchase";
	}
	@RequestMapping("/purchase_Modify")
		public String PurchaseModify() {
			return "Store/purchase_Modify";
	}
	@RequestMapping("/menu_Register")
		public String MenuRegister() {
			return "Head/menu_Register";
	}
	@RequestMapping("/purchase_Confirm")
		public String PurchaseConfirm() {
			return "Head/purchase_Confirm";
	}
	//목록
	@RequestMapping("/menu_Coffee")
	   public ModelAndView menuList() {
	      MenuDAOImp dao = sqlSession.getMapper(MenuDAOImp.class);
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("MenuList", dao.MenuList());
	      mav.setViewName("Consumer/menu_coffee");
	      return mav;
	   }
	//메뉴등록하기
	@RequestMapping(value="/menu_RegisterOk", method=RequestMethod.POST)
	public ModelAndView Menu_RegisterOk(MenuVO vo, HttpSession ses) {

	   ModelAndView mav = new ModelAndView();
	   MenuDAOImp dao = sqlSession.getMapper(MenuDAOImp.class);
	   int cnt = dao.Menu_RegisterOk(vo);
	   if(cnt>0) {//글등록
		   mav.setViewName("redirect:menu_Coffee");
	   }else {
		   mav.setViewName("Consumer/menu_Register_Result");
	   }
	   return mav;
   }
   
	
}
