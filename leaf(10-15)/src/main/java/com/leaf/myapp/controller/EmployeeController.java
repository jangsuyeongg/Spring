package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.EmployeeService;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;

@Controller
public class EmployeeController {
	@Inject
	EmployeeService employeeService;
	
	
	@RequestMapping("/employeeManagePage")
	public String employeemain() {		
		return "employee/employeemain";
	}
	@RequestMapping("/employeeRegiPage")
	public String employeeRegiPage() {
		return "employee/employeeRegi";
	}
	@RequestMapping("/deptlist")
	public String deptlist() {
		return "employee/deptListPoP";
	}
	@RequestMapping("/employeeChange")
	public ModelAndView employeeChange() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("employee/employeeChange");
		return mav;
	}
	
	// 직원검색(사원번호,사원명,부서명)
	@RequestMapping("/empNumSearch")
	@ResponseBody
	public ModelAndView searchEmployeeList(PageVO vo){	
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}	
	
	// 사원등록 폼에서 가입한 아이디인지 확인
	@RequestMapping("/employeeJoinChecking")
	@ResponseBody
	public EmployeeVO employeeJoinCheck(String userid) {		
		return employeeService.checkJoinId(userid);
	}
		
	// 사원등록
	@RequestMapping(value="/employeeRegister", method=RequestMethod.POST)
	public ModelAndView employeeRegister(EmployeeVO empVo) { // httpSession
		ModelAndView mav = new ModelAndView();
		int result = employeeService.employeeRegiInsert(empVo);
		if(result>0) {
			mav.setViewName("redirect:employeeRegiPage");			
		}else {
			mav.setViewName("employee/employeeRegiFail");
		}
		return mav;
	}
	
	
}
