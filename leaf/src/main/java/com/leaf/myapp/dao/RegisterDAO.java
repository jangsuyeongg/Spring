package com.leaf.myapp.dao;


import com.leaf.myapp.vo.RegisterVO;

public interface RegisterDAO {
	
	public int idCheck(String userid);//아이디 중복체크 
	public int registerOk(RegisterVO vo);//회원가입
	public String idCheckOk(String userid, String tel); //아이디 찾기
	public String sendNumber(String tel, String username);//인증번호 확인.
	
	public RegisterVO loginSelect(RegisterVO vo);//로그인
	
	public String emailAddress(String tel);//전화번호로 이메일 주소 가져오기
	public int passwordUpdate(String tel,String email,String userpwd);//비밀번호가 업데이트
	
}
