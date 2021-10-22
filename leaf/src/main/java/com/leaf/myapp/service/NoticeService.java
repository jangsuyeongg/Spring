package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> noticeAllSelect();
	public NoticeVO noticeView(int no);
	public int noticeWrite(NoticeVO vo);
	public int noticeEdit(NoticeVO vo);
	public int noticeDel(int no, String userid);
}
