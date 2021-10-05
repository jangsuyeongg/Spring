package com.bitcamp.myhome.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginIntercepter extends HandlerInterceptorAdapter {
	//��Ʈ�ѷ��� ȣ��Ǳ����� ȣ��Ǵ� �޼ҵ�
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		//�α��� ���θ� Ȯ���Ͽ� �α����� �ȵȰ�� �α��������� �̵�(Ȩ)
		//�α����� �Ȱ��� ������ ��Ʈ�ѷ��� ����
		
		//�α��ε� ���̵��ϱ�
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		
		//�α����� �ȵ� ��� 
		if(userid==null || userid.equals("")) {
			response.sendRedirect(request.getContextPath()+"/");// /myhome
			return false;
		}
		//�α����� �� ���	--������ ����. ������ ��Ʈ�ѷ��� ��Ī�ּҷ� �̵�
		return true; 
	}
	//��Ʈ�ѷ��� ����� �� view�������� �̵��ϱ����� ȣ��ȴ�.
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
		
	}
	//��Ʈ�ѷ��� ������ ȣ��ȴ�.
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception ex) throws Exception{
		}
}
