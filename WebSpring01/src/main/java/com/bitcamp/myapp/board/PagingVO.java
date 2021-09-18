package com.bitcamp.myapp.board;

public class PagingVO {
	private int totalRecord;//�ѷ��ڵ��
	private int nowPage=1;//����������
	private int totalPage;//����������
	private int onePageRecord=5;//���������� ���ڵ� ��
	
	//�˻���
	
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		
		//���������� ceil(�ø� �Լ�)
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