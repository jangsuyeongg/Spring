package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.EmployeeDAO;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;

@Service
public class EmployeeServiceImp implements EmployeeService{
	@Inject
	EmployeeDAO employeeDAO;
	
	@Override
	public List<EmployeeVO> searchEmployeeList(PageVO pVo) {		
		return null;
	}

	@Override
	public EmployeeVO checkJoinId(String userid) {
		return employeeDAO.checkJoinId(userid);
	}

	@Override
	public int employeeRegiInsert(EmployeeVO empVo) {		
		return employeeDAO.employeeRegiInsert(empVo);
	}
	
	


}
