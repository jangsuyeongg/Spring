package com.bitcamp.myapp.board;

import java.util.List;

public interface BoardDAOImpl {
	//�ѷ��ڵ��
	public void totalRecordCount(PagingVO pVo);
	//�ش������� ���ڵ� ����
	public List<BoardVO> boardPageSelect(PagingVO pVo);
	
}
