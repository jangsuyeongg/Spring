package com.bitcamp.myapp.board;

public class PagingVO {
	private int totalRecord;//총레코드수
	private int nowPage=1;//현재페이지
	private int totalPage;//총페이지수
	private int onePageRecord=5;//한페이지당 레코드 수
	
	//검색어
	
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		
		//총페이지수 ceil(올림 함수)
		totalPage = (int)Math.ceil(totalRecord/(double)onePageRecord);	
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	
}
