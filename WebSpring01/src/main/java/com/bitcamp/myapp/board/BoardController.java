package com.bitcamp.myapp.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	   BoardDAO dao = new BoardDAO();
	   
	   @RequestMapping("/boardList")
	   public ModelAndView boardList(PagingVO pVo) {
	      ModelAndView mav = new ModelAndView();
	      
	      //�ѷ��ڵ��
	      dao.totalRecordCount(pVo);
	      mav.addObject("pVo",pVo); 
	      mav.addObject("list",dao.boardPageSelect(pVo));//�ش������� ���ڵ� ����
	      mav.setViewName("board/boardList");
	      return mav;
	      
	   }
	}
