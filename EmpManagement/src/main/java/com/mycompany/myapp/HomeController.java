package com.mycompany.myapp;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.myapp.service.MemberService;
import com.mycompany.myapp.vo.MemberVO;

@Controller
public class HomeController {
   
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home() {
      return "home";
   }
   
   @Inject
	MemberService memberService;
	/*
	@RequestMapping("/board/list")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllSelect());
		mav.setViewName("board/list");
		return mav;
	}
	@RequestMapping("/board/write")
	public String boardWrite() {
		return "board/write";
	}
	@RequestMapping(value="/board/WriteOk", method=RequestMethod.POST)
	public ModelAndView boardWriteOk(MemberVO vo, HttpServletRequest req) {
		vo.setIp(req.getRemoteAddr());
		vo.setUserid((String)req.getSession().getAttribute("userid"));
		
		int result = boardService.boardWrite(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
	}
	@RequestMapping("board/view")
		public ModelAndView boardView(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",boardService.boardView(no));
		mav.setViewName("board/view");
		return mav;
	}
	 //수정폼
	@RequestMapping(value="/board/Edit", method=RequestMethod.GET)
	   public ModelAndView boardEdit(int no) {
		   ModelAndView mav = new ModelAndView();
		   mav.addObject("vo", boardService.boardView(no));
		   mav.setViewName("board/edit");
		   return mav;
	}
	//글수정
	@RequestMapping(value="/board/editOk", method=RequestMethod.POST)
	public ModelAndView boardEditOk(MemberVO vo, HttpSession ses) {
		vo.setUserid((String)ses.getAttribute("userid"));
		
		int result= boardService.boardEdit(vo);
		
		ModelAndView mav = new ModelAndView();
		if(result>0) {
			mav.setViewName("redirect:view");
			mav.addObject("no", vo.getNo());
		}else {
			mav.setViewName("board/result");
		}
		return mav;
	}
	//글삭제
	@RequestMapping(value="/board/del")
	public ModelAndView boardDel(int no, HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		
		int result = boardService.boardDel(no, userid);
		ModelAndView mav = new ModelAndView();
		if(result>0) {
			mav.setViewName("redirect:list");
		}else {
			mav.addObject("no", no);
			mav.setViewName("redirect:view");
		}
		return mav;
	}
   */
}
