package com.bitcamp.myhome.register;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {
	SqlSession sqlSession;

	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@RequestMapping(value="/loginOk", method=RequestMethod.POST)
	public String loginOk(RegisterVO vo, HttpSession ses) {
		//�α���
		//xml�� �߻�Ŭ������ �����Ͽ� �߻�Ŭ������ �����Ѵ�.
		RegisterDAOImp dao = sqlSession.getMapper(RegisterDAOImp.class);
		//�޼ҵ���� - ���÷��ڵ尡 ���� ��� null�� ���ϵǰ�, ���÷��ڵ尡 ������ vo���ϵȴ�.
		RegisterVO logVo = dao.loginCheck(vo);
		//��������
		if(logVo!=null) {//�α��ε� ���
			ses.setAttribute("username", logVo.getUsername());
			ses.setAttribute("userid", logVo.getUserid());
		}else {
			
		}
		return "home";
	}
	//�α׾ƿ�
	@RequestMapping("/logout")
	public String logout(HttpSession ses) {
		ses.invalidate();
		return "home";
	}
}
