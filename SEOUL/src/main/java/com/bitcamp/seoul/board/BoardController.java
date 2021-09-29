package com.bitcamp.seoul.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	   BoardDAO dao = new BoardDAO();
	   

		@RequestMapping("/boardList")
		@ResponseBody
		public List<BoardVO> boardList(){
			System.out.println("³ª¿Í¶ó");
			return dao.boardSelect();
		}
}
















