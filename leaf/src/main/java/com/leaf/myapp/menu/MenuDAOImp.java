package com.leaf.myapp.menu;

import java.util.List;

public interface MenuDAOImp {
	public List<MenuVO> MenuList();//메뉴보기
	//public MenuVO MenuDetail(int no);//상세설명페이지
	public int Menu_RegisterOk(MenuVO vo);//메뉴등록
}
