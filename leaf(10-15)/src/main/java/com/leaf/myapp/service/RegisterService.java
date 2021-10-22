package com.leaf.myapp.service;

import com.leaf.myapp.vo.RegisterVO;

public interface RegisterService {
	public int registerOk(RegisterVO vo);
	public int idCheck(String userid);
	public void certifiedPhoneNumber(String phoneNumber, String cerNum);
	public String sendNumber(String tel, String username);
	public RegisterVO loginSelect(RegisterVO vo);
	public String emailAddress(String tel);


	public int passwordUpdate(String tel,String email,String userpwd);
	

}
