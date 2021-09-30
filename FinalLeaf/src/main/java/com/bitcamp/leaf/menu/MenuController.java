package com.bitcamp.leaf.menu;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping("/menu")
	   public String Menu() {
		   return "Consumer/menu_coffee";
	   }
	@RequestMapping("/menu_detail")
		public String MenuDetail() {
			return "Consumer/menu_detail";
	}
	
}
