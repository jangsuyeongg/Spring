package com.leaf.myapp.menu;

import java.util.List;

public interface MenuDAOImp {
	public List<MenuVO> MenuList();//�޴�����
	//public MenuVO MenuDetail(int no);//�󼼼���������
	public int Menu_RegisterOk(MenuVO vo);//�޴����
}
