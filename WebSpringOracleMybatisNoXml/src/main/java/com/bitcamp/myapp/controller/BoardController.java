package com.bitcamp.myapp.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.myapp.service.BoardService;
import com.bitcamp.myapp.vo.BoardVO;

@Controller
public class BoardController {
   @Inject
   BoardService boardService;
   //게시판 목록
   @RequestMapping("/boardList")
   public String boardList(Model model) {
      model.addAttribute("list", boardService.boardList());
      return "board/list";
   }
   //글내용보기
   @RequestMapping("/boardView")
   public String boardView(Model model, int no) {
      model.addAttribute("vo",boardService.boardView(no));
      return "board/boardView";
   }
   //글쓰기폼
   @RequestMapping(value="/boardWrite")
   public String boardWrite() {
	   return "board/boardWrite";
   }
   //글등록
   @RequestMapping(value="/boardWriteOk", method=RequestMethod.POST)
   public ModelAndView boardWriteOk(BoardVO vo, HttpSession session, HttpServletRequest req) {
	   vo.setUserid((String)session.getAttribute("logid"));
	   vo.setIp(req.getRemoteAddr());
	   
	   int cnt = boardService.boardInsert(vo);
	   ModelAndView mav = new ModelAndView();
	   if(cnt>0) {//글쓰기 성공
		   mav.setViewName("redirect:boardList");
	   }else {
		   mav.setViewName("redirect:boardWrite");
	   }
	   return mav;
   }
   @RequestMapping("/boardEdit")
   public ModelAndView boardEdit(int no) {
	   ModelAndView mav = new ModelAndView();
	   
	   mav.addObject("vo",boardService.boardView(no));
	   mav.setViewName("board/boardEdit");
	   return mav;
   }
      //글수정mapping
   @RequestMapping(value="boardEditOk", method=RequestMethod.POST)
   public ModelAndView boardEditOk(BoardVO vo, HttpSession ses) {
      
      ModelAndView mv= new ModelAndView();
      vo.setUserid((String)ses.getAttribute("logid"));
      
      int cnt=boardService.boardUpdate(vo);
      
      if(cnt>0) {//수정
         mv.setViewName("redirect:/boardView");
         mv.addObject("no",vo.getNo());
      }else {//실패시 이전페이지(history back)
         mv.setViewName("board/result");
      }
      
      return mv;
   }
   
   //삭제
   @RequestMapping("/boardDel")
   public ModelAndView boardDel(int no, HttpSession session) {
	   String userid=(String)session.getAttribute("logid");
	   int cnt = boardService.boardDelete(no, userid);
	   
	   ModelAndView mav = new ModelAndView();
	   if(cnt>0) {
		   mav.setViewName("redirect:boardList");
	   }else {
		   mav.addObject("no", no);
		   mav.setViewName("redirect:boardView");
	   }
	   return mav;
   }
 //여러레코드 배열로 삭제하기
   @RequestMapping(value="/arrayBoardDel",method=RequestMethod.POST)
   public ModelAndView arrayBoardDel(BoardVO vo) {
      ModelAndView mav = new ModelAndView();
      int result =boardService.boardDelArray(vo.getNoDelArray());
      System.out.println("삭제된 레코드수 : " + result);
      mav.setViewName("redirect:boardList");   
      return mav;
   }
   //여러개의 레코드를 컬렉션으로 삭제하기
   @RequestMapping(value="/listBoardDel", method=RequestMethod.POST)
   public ModelAndView listBoardDel(BoardVO vo) {
	   ModelAndView mav = new ModelAndView();
	   int cnt = boardService.boardDelList(vo.getNoDelList());
	   System.out.println("cnt:+cnt");
	   mav.setViewName("redirect:boardList");
	   return mav;
   }
}








