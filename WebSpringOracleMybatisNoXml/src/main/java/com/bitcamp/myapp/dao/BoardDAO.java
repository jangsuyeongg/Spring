package com.bitcamp.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bitcamp.myapp.vo.BoardVO;


public interface BoardDAO {
   //�Խ��Ǹ��
   @Select("select no, subject, userid, hit, "
         +" to_char(writedate,'MM-DD HH:MI') writedate from board "
         +" order by no desc")
   public List<BoardVO> boardList();
   
   //�۳��뺸��
   @Select("select no, subject ,userid, hit, content, writedate "
         + " from board where no=#{no}") //#no -> �Ű�����
   public BoardVO boardView(int no);
}