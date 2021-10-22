package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.MenuVO;

public interface MenuService {
	public List<MenuVO> MenuList(String m_code);//메뉴보기
	public MenuVO MenuDetail(int p_num);//상세설명페이지
	public int Menu_RegisterOk(MenuVO vo);//메뉴등록
}
