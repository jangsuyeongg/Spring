package com.leaf.myapp.dao;

import com.leaf.myapp.vo.EmployeeVO;


public interface EmployeeDAO {
	public EmployeeVO checkJoinId(String userid);
	public int employeeRegiInsert(EmployeeVO empVo);
	
}
