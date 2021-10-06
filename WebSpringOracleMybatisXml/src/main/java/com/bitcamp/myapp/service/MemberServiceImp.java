package com.bitcamp.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bitcamp.myapp.dao.MemberDAO;
import com.bitcamp.myapp.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
   @Inject
   MemberDAO memberDAO;//인터페이스는 new이렇게 객체 생성불가인제 인젝트 어노테이션이 객체 생성해줌
   
   @Override
   public MemberVO loginSelect(MemberVO vo) {
      //dao의 메소드 호출 
      return memberDAO.loginSelect(vo);
   }
   
}