package com.bitcamp.myapp.board;

import java.util.ArrayList;
import java.util.List;

import com.bitcamp.myapp.DBConnection;

public class BoardDAO extends DBConnection implements BoardDAOImpl {

   @Override
   public void totalRecordCount(PagingVO pVo) { //�ѷ��ڵ��
      
      try {
         dbConn();
         sql="select count(no) from board";
         //�˻�� ������
         if(pVo.getSearchWord()!=null && !pVo.getSearchWord().equals("")) {
        	 sql += " where "+pVo.getSearchKey()+" like '%"+pVo.getSearchWord()+"%'";
        	 
         }
         pstmt = con.prepareStatement(sql);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            
            pVo.setTotalRecord(rs.getInt(1)); //vo���� �ѷ��ڵ�� ���庯���� ������
            
         }
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         dbClose();
      }
   }

   @Override
   public List<BoardVO> boardPageSelect(PagingVO pVo) {
      List<BoardVO> list = new ArrayList<BoardVO>();
      try {
         dbConn();
         sql="select * from "
               +"(select * from "
               +"(select no, subject, userid, hit, to_char(writedate,'MM-DD-HH:Mi') writedate from board ";
              
               //�˻�� ������
               if(pVo.getSearchWord()!=null && !pVo.getSearchWord().equals("")){
            	   sql += " where "+pVo.getSearchKey() + " like '%"+pVo.getSearchWord()+"%'";
               }
         
         		sql += "order by no desc) "
               +"where rownum<=? order by no asc) "
               +"where rownum<=? order by no desc";
         pstmt = con.prepareStatement(sql);
         //���������緹�ڵ��*����������
         pstmt.setInt(1, pVo.getOnePageRecord()*pVo.getNowPage());
         //�����̴緹�ڵ��
         //���� ���ڵ��
         int lastPageRecord = pVo.getTotalRecord() % pVo.getOnePageRecord();//3
         
         if(pVo.getTotalPage()== pVo.getNowPage() && lastPageRecord!=0) {//�������������϶� , �������������� 0�̾ƴҶ� ��ü/5 �ؼ� 3�� ������ �϶�??
        	 pstmt.setInt(2,lastPageRecord);
         }else {
        	 pstmt.setInt(2,pVo.getOnePageRecord());
         }
       
         
         rs=pstmt.executeQuery();
         while(rs.next()) {
            BoardVO vo = new BoardVO();
            vo.setNo(rs.getInt(1));
            vo.setSubject(rs.getString(2));
            vo.setUserid(rs.getString(3));
            vo.setHit(rs.getInt(4));
            vo.setWritedate(rs.getString(5));
            list.add(vo);
            
         }
         
      }catch(Exception e) {
         
      }finally {
         dbClose();
      }
      return list;
   }
   
   @Override
	public void boardSelect(BoardVO vo) {
		try {
			dbConn();
			sql = "select no, userid, subject, content, hit, writedate from board where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, vo.getNo());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setNo(rs.getInt(1));
				vo.setUserid(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setHit(rs.getShort(5));
				vo.setWritedate(rs.getString(6));
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}
 //��۾���
   @Override
     public int replyInsert(ReplyBoardVO replyVo) {
        int cnt=0;
        try {
           dbConn();
           sql = "insert into replyboard(num, userid, coment, no) "
                 + " values(replysq.nextval, ?,?,?)";
           pstmt = con.prepareStatement(sql);
           pstmt.setString(1, replyVo.getUserid());
           pstmt.setString(2, replyVo.getComent());
           pstmt.setInt(3, replyVo.getNo());
           
           cnt = pstmt.executeUpdate();
           
        }catch(Exception e) {
           e.printStackTrace();
        }finally {
           dbClose();
        }
        return cnt;
     }
   @Override
	public List<ReplyBoardVO> replyListSelect(int no) {
		List<ReplyBoardVO> lst = new ArrayList<ReplyBoardVO>();
		try {
			dbConn();
			sql= "select num, userid, coment, writedate from replyboard "
					+ " where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReplyBoardVO vo = new ReplyBoardVO();
				vo.setNum(rs.getInt(1));
				vo.setUserid(rs.getString(2));
				vo.setComent(rs.getString(3));
				vo.setWritedate(rs.getString(4));
				lst.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}
   @Override
 //��ۼ��� 
   public int replyUpdate(ReplyBoardVO replyVo) {
      int cnt=0;
      try {
          dbConn();
          sql ="update replyboard set coment=? where num=? and userid=?";
          pstmt =con.prepareStatement(sql);
          pstmt.setString(1,replyVo.getComent());
          pstmt.setInt(2,replyVo.getNum());
          pstmt.setString(3,replyVo.getUserid());
          cnt = pstmt.executeUpdate();
      }catch(Exception e) {
          e.printStackTrace();
      }finally {
         dbClose();
      }
      return cnt;
   }
   @Override
	public int replyDelete(int num, String userid) {
	   int cnt=0;
	   try {
			dbConn();
			sql= "delete from replyboard where num=? and userid=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, userid);
			
			cnt = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
}

















