package com.sist.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// XML => Annotation
import java.util.*;
import com.sist.model.*;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * 	매칭 => ListModel == list.jsp (list.jsp)
	 * 		  DetailModel == detail.jsp(detail.jsp)
	 * 
	 *  클라이언트 ==============>
	 *           요청(request)
	 */
	private Map clsMap=new HashMap();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청을 받는다 ==> list, detail
		// 2. http://localhost/OnLineStudy15_MVC(list).do
		// 3. http://localhost/OnLineStudy15_MVC(detial).do
		// 4. http://localhost/OnLineStudy15_MVC(Controller?com=list
		String cmd=request.getRequestURI(); //OnLineStudy15_MVC/(list).do
		// URI ==> /OnLineStudy15_MVC/list.do(?page=2) => request에 따로 저장
		System.out.println(cmd);
		cmd=cmd.substring(request.getContextPath().length()+1);
		// request.getContextPath():/OnLineStudy15_MVC/
		// 사용자가 요청한 요청내용 확인
		// 클래스를 찾기 시작
		Model model=(Model)clsMap.get(cmd);
		// 요청처리 ==> 메소드
		String jsp=model.handlerRequest(request);
		// 결과 값을 받은 request ==> jsp로 전송
		RequestDispatcher rd=request.getRequestDispatcher(jsp);
		rd.forward(request, response);
	}
	@Override
	public void init(ServletConfig config) throws ServletException {
		clsMap.put("board/list", new ListModel());
		clsMap.put("detail", new DetailModel());
	}
}