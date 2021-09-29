package com.bitcamp.myapp.board;

import java.util.List;

public interface BoardDAOImpl {
	//�ѷ��ڵ��
	public void totalRecordCount(PagingVO pVo);
	//�ش������� ���ڵ� ����
	public List<BoardVO> boardPageSelect(PagingVO pVo);
	//�۳��뺸��
	//public BoardVO boastSelect(int no);
	//public BoardVO boardSelect(int no)
	public void boardSelect(BoardVO vo);
	//��۾���
	public int replyInsert(ReplyBoardVO replyVo);
	//��۸��
	public List<ReplyBoardVO> replyListSelect(int no);
	//��ۼ���
	public int replyUpdate(ReplyBoardVO replyVo);
	//��ۻ���
	public int replyDelete(int num, String userid);
}
