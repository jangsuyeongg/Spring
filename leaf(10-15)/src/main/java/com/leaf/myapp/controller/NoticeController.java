package com.leaf.myapp.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.NoticeService;
import com.leaf.myapp.vo.NoticeVO;


@Controller
public class NoticeController {
	@Inject
	NoticeService noticeService;
	
	//글 목록
	@RequestMapping("/noticeList")
	public ModelAndView noticeList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",noticeService.noticeAllSelect());
		mav.setViewName("notice/noticeList");
		return mav;
	}	
	
	//게시글보기
	@RequestMapping("/noticeDetail")
	public ModelAndView noticeDetail(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeVo", noticeService.noticeView(no));		
		mav.setViewName("notice/noticeDetail");
		return mav;	
	}
	//글 삭제
	@RequestMapping("/noticeDelete")
	public ModelAndView NoticeDelete(int no, HttpSession session) {
		String userid = "goguma";
		int result = noticeService.noticeDel(no, userid);
		ModelAndView mav = new ModelAndView();
		if(result>0) {
			mav.setViewName("redirect:noticeList");
		}else {
			mav.addObject("no", no);
			mav.setViewName("redirect:noticeDetail");
		}
		return mav;
	}
	//글 수정
	@RequestMapping("/noticeEdit")
	public ModelAndView noticeEdit(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", noticeService.noticeView(no));
		mav.setViewName("notice/noticeEdit");
		return mav;
	}
	@RequestMapping(value="/noticeEditOk", method=RequestMethod.POST)
	public ModelAndView noticeEditOk(NoticeVO vo, HttpSession ses) {
		vo.setUserid((String)ses.getAttribute("userid"));
		int result = noticeService.noticeEdit(vo);
		ModelAndView mav = new ModelAndView();
		if(result>0) {
			mav.addObject("no", vo.getNo());
			mav.setViewName("redirect:noticeDetail");
		}else {
			mav.setViewName("notice/noticeEditResult");
		}
		return mav;
	}
	//글쓰기
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeForm";
	}
	//�۵���ϱ�
	@RequestMapping(value="/noticeWriteOk", method=RequestMethod.POST)
	public ModelAndView noticeWriteOk(NoticeVO vo, HttpSession session) {
//		vo.setUserid((String)session.getAttribute("userid"));		
		int writeResult = noticeService.noticeWrite(vo);
		ModelAndView mav = new ModelAndView();
		 if(writeResult>0) {//�۾��� ����
	         mav.setViewName("redirect:noticeList");
	     }else {
	         mav.setViewName("redirect:noticeWrite");
	     }
	     return mav;
	}
	//사회공헌 페이지
	@RequestMapping("/social")
	public String social() {
		return "/notice/social";
	}
}
