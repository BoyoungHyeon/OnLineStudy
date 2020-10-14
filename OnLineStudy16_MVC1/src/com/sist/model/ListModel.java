package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sist.dao.BoardDAO;
import com.sist.dao.BoardVO;
// 게시판 목록 처리==>
/*
 * 
 */
public class ListModel implements Model{

   @Override
   public String handlerRequest(HttpServletRequest request) {
      
      String page=request.getParameter("page");
      if(page==null) // 게시판을 실행할때 => 첫페이지
         page="1";  // default 
      
      int curpage = Integer.parseInt(page);
      
      // 현재 페이지 ==> list목록을 가지고 온다.
      Map map = new HashMap();
      
      int rowSize=10;
      int start=(rowSize*curpage)-(rowSize-1);
      int end=(rowSize*curpage);
      map.put("start",start);
      map.put("end",end);
      
      List<BoardVO> list = BoardDAO.boardListData(map);
      
      int totalpage= BoardDAO.boardTotalPage();
      /*
       *   JSP로 전송해야될 데이터는 3개 (현재페이지,총페이지,list목록) 
       */
      request.setAttribute("list",list);
      request.setAttribute("curpage",curpage);
      request.setAttribute("totalpage",totalpage);
      // 여기서 전송된 것이 아니라 ==> Controller에서 request를 받아서 전송
      /*
       * 
       */
      return "board/list.jsp"; //어떤 jsp로 request를 보낼 것 인지
   }

}