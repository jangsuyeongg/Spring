package com.bitcamp.app.board;

import java.util.List;

public interface BoardDAOImpl {
	//����Ʈ -> ���ڵ� ��ü ����
	public List<BoardVO> allRecord();
	//�۳��뺸�� -> ���������� �̵��Ҷ� -> ���ڵ�1������
	public BoardVO oneRecord(int no);
	//�ۼ����ϱ�
	public int boardUpdate(BoardVO vo);
	//�۵���ϱ�
	public int boardInsert(BoardVO vo);
	//�ۻ����ϱ�
	public int boardDelete(int no);
}
