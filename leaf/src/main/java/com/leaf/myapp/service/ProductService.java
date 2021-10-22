package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;

public interface ProductService {
	public List<ProductVO> ProductList();
	public List<ProductVO> ProductPartner(int hq_num);
	public int Purchase_RegisterOk(ProductVO vo);//발주하기
	public List<ProductVO> purchaseList();//발주한거 보는 리스트
	public List<ProductVO> purchaseListAll();// 본사가 보는 전체가맹점 발주리스트(본사페이지) 
	public int purchaseDel(List<Integer> purchaseDel);//가맹점이 발주한거 삭제하기 
	public List<ProductVO> WarehousingList();//본사에서 보는 입고리스트
	public int Warehousing_RegisterOk(ProductVO vo);//입고등록
	public int purchaseConfirm(ProductVO vo);//본사에서 확인버튼 0->1

}
