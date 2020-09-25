package com.sist.dao;
import java.io.*;//XML파일 읽기 => Reader (한글파일)
import java.util.*;//List => 구현 (ArrayList)
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class BoardDAO {
// XML을 파싱(데이터 읽기) => 읽은 데이터 저장 ==> SqlSesionFactory
private static SqlSessionFactory ssf;
// 초기화 => XML을 읽기(자동으로 셋팅)
static 
{
	   try
	   {
		   // 1. XML파일 읽기
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   ssf=new SqlSessionFactoryBuilder().build(reader);
	   }catch(Exception ex)
	   {
		   // 에러처리 
		   System.out.println(ex.getMessage());
	   }   
}
public static List<BoardVO> boardListData(Map map)
{
	   List<BoardVO> list=new ArrayList<BoardVO>();
	   // Connection을 사용한 다음에 반드시 반환 ==> SqlSession
	   SqlSession session=null;
	   // SqlSession => Connection과 동일한 역할 수행 
	   // 컴파일 예외처리는 없다 => 초반에 에러처리하기 위해서 => 예외처리를 하는 것이 좋다 => null
	   try
	   {
		   // 1. 미리 만든 Connection객체를 얻어 온다 
		   session=ssf.openSession();
		   // 2. XML에 있는 SQL문장을 실행후에 결과값을 달라
		   list=session.selectList("freeboardListData",map);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();//실행하는 과정을 보여준다 
	   }
	   finally
	   {
		   // 반환 => Connection=>close()
		   if(session!=null)
			   session.close(); 
	   }
	   return list;
  }
}