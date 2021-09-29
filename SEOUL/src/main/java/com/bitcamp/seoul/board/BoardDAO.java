package com.bitcamp.seoul.board;

import java.util.ArrayList;
import java.util.List;

import com.bitcamp.seoul.DBConnection;

public class BoardDAO extends DBConnection  {

public List<BoardVO> boardSelect(){
		
		List<BoardVO> list=new ArrayList<BoardVO>();
		
		try {
			dbConn();
			sql="select no, subject, userid, hit, to_char(writedate, 'MM-DD') writedate from board where no>400 order by no desc"; 
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) { 
				BoardVO vo= new BoardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setUserid(rs.getString(3));
				vo.setHit(rs.getInt(4));
				vo.setWritedate(rs.getString(5));
			
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}

}


















