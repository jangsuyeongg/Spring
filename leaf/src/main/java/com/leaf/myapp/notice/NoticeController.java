package com.leaf.myapp.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	//게시글보기
	@RequestMapping("/noticeDetail")
	public String noticeDetail() {
		return "/notice/noticeDetail";
	}
	//글 삭제
	@RequestMapping("/noticeDelete")
	public String NoticeDelete() {
		return "/notice/noticeList";
	}
	//글 수정
	@RequestMapping("/noticeEdit")
	public String noticeEdit() {
		return "/notice/noticeEdit";
	}
	//글쓰기
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeForm";
	}
	//글 목록
	@RequestMapping("/noticeList")
	public String noticeList() {
		return "/notice/noticeList";
	}
	
	//사회공헌 페이지
	@RequestMapping("/social")
	public String social() {
		return "/notice/social";
	}
}
