package com.sist.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
   private static SqlSessionFactory ssf;
   
   static {
      try {
         Reader reader = Resources.getResourceAsReader("Config.xml");
         ssf = new SqlSessionFactoryBuilder().build(reader);
      } catch (Exception e) {
         System.out.println(e.getMessage());
      }
      
   }
   
   
// 로그인 처리
   public static MemberVO memberLogin(String id, String pwd) {
      MemberVO vo = new MemberVO();
      SqlSession session = null;
      
      try {
    	  // 연결
         session = ssf.openSession();
         // 오라클에 SQL문장 전송
         int count=session.selectOne("memberIdCheck", id);
         if(count==0) //ID가 없는 상태
         {
        	 vo.setMsg("NOID");
         }else // ID가 존재하는 상태
         {
        	 // 비밀번호 검사
        	 vo=session.selectOne("memberGetInfoData", id);
        	 if(pwd.equals(vo.getPwd())) { //로그인
        		 vo.setMsg("OK");
        	 }else { //비밀번호가 틀린 상태
        		 vo.setMsg("NOPWD");
        	 }
         }
      } catch (Exception ex) {
         ex.printStackTrace();
      }
      finally {
         if(session != null) {
            session.close();
         }
      }
      
      return vo;
      
   }
}