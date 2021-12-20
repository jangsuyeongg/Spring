package com.mycompany.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mycompany.myapp.dao.MemberDAO;
import com.mycompany.myapp.vo.MemberVO;

@Service
public class MemberServiceImp implements  MemberService{
   
   @Inject  
   MemberDAO   memberDAO;

@Override
public List<MemberVO> MemberAllSelect() {
	// TODO Auto-generated method stub
	return memberDAO.memberAllSelect();
}


}