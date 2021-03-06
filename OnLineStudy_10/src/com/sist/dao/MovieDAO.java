package com.sist.dao;

import java.sql.*; // Connection,PreparedStatement,ResultSet
import javax.sql.*; // 데이터베이스 정보를 모아서 처리: DataSource
import javax.naming.*; // jdbc/oracle => connection객체의 주소를 찾는 경우
import java.io.*;
import java.util.*; // ArrayList사용을 위해 import

/**
 * @author 지승구
 *
 *         Connectionpool ==> 변경 ==> connection 객체 얻기할때만 달라진다. ==> 예전에는
 *         Connection을 직접 생성했지만 ==> 지금은 미리 만들어져 있기 때문에 만들어진 주소만 얻어온다
 * 
 */
public class MovieDAO {
   private Connection conn;
   private PreparedStatement ps;
/*
   // MyBatis 에서 사용중 ==> POOLED
   public void getConnection() { // 미리 생성된 Connection을 얻어온다.
      try {
         // 연결 ==> POOL에 연결(POOL은! CONNECTION 객체 관리 영역이다)
         Context init = new InitialContext(); // 풀에 연결하는 Ing..
         Context c = (Context) init.lookup("java://comp/env");
         DataSource ds = (DataSource) c.lookup("jdbc/oracle");
         // POOL => 가상으로(이름으로) 디렉토리가 만들어져있다. (줄여서 JNDI)
         conn = ds.getConnection();
      } catch (Exception e) {
         e.getMessage();
      }
   }
   */
    public void getConnection()// 미리 생성된 connection을 얻어온다 
     {
        try
        {
           // 연결 => POOL에 연결 (POOL => Connection객체 관리 영역)
           Context init=new InitialContext();
           Context c=(Context)init.lookup("java://comp/env");
           DataSource ds=(DataSource)c.lookup("jdbc/oracle");
           // POOL => 가상으로 (이름) 디렉토리가 만들어 있다 (JNDI)
           conn=ds.getConnection();
        }catch(Exception ex)
        {
           System.out.println(ex.getMessage());
        }
     }
   public void disConnection() // 사용후에 반환
   {
      try {
         if (ps != null)
            ps.close();
         if (conn != null)
            conn.close();
      } catch (Exception e) {
      }
   }

   // 기능 => 동일
    public List<String> empGetName()
     {
        List<String> list=new ArrayList<String>();
        try
        {
           getConnection();// 주소 얻기
           String sql="SELECT ename FROM emp";
           ps=conn.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
              list.add(rs.getString(1));
           }
           rs.close();
        }catch(Exception ex)
        {
           System.out.println(ex.getMessage());
        }
        finally
        {
           disConnection();//반환
        }
        return list;
     }
   //톰캣 => 웹에서만 동작 java소스 main에서는 동작할 수없다 
   public static void main(String[] args) {
      MovieDAO dao = new MovieDAO();
      List<String> list=dao.empGetName();
      for(String s:list)
      {
         System.out.println(s);
      }
   }
   public List<MovieVO> movieListData(int page)
   {
	  
      List<MovieVO> list = new ArrayList<MovieVO>();
      try {
            //미리 만들어진 Connection주소를 얻어온다 (주소)
         getConnection();
         //SQL 문장을 전송
         int rowSize=20;
         int start=(rowSize*page)-(rowSize-1); //rownum =1
         int end=rowSize*page;
         
         String sql="SELECT no,title,poster,num "
               +"FROM (SELECT no,title,poster,rownum as num "
               +"FROM (SELECT no,title,poster "
               +"FROM daum_movie ORDER BY no ASC)) "
               +"WHERE num BETWEEN "+start+" AND "+end;
         
         //전송
         ps=conn.prepareStatement(sql);
         ResultSet rs=ps.executeQuery();
         
         while(rs.next())
         {
            MovieVO vo=new MovieVO();
            vo.setNo(rs.getInt(1));
            vo.setTitle(rs.getString(2));
            vo.setPoster(rs.getString(3));
            list.add(vo);
            
         }
         rs.close();
      }catch (Exception e) {
      
      }finally {
         disConnection();
      }
      
      return list;
      
      
      
   }
   /*
    * getConnection() SQL문장 전송 결과값 받아서 ArrayList에 담아준다.
    */
}