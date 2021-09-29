package com.bitcamp.app.register;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bitcamp.app.Constants;

public class RegisterDAO implements RegisterDAOImp{
   
   public JdbcTemplate template;
   
   public JdbcTemplate getTemplate() {
      return template;
   }

   public void setTemplate(JdbcTemplate template) {
      this.template = template;
   }

   public RegisterDAO() {
      this.template = Constants.template; //�ܽ�ŸƮ�������� ���ø��� �ٿ������������ø��� ���Խ�Ų��
   }
   //===============================
   @Override
   public RegisterVO login(RegisterVO vo) {
	   String sql = "select count(userid) cnt from register where userid=? and userpwd=?";
	   RegisterVO logVO = template.queryForObject(sql, new BeanPropertyRowMapper<RegisterVO>(RegisterVO.class),
			   vo.getUserid(),vo.getUserpwd() );
	   if(logVO.getCnt()>0) {
		   sql = "select userid, username from register where userid=? and userpwd=?";
		   return template.queryForObject(sql, new BeanPropertyRowMapper<RegisterVO>(RegisterVO.class),
				   vo.getUserid(), vo.getUserpwd());
	   }else {
		   return null;
	   }
	  
   }

}