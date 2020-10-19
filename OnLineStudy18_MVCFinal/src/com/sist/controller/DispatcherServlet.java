package com.sist.controller;

import java.io.*;
import java.lang.reflect.Method;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
/*
 * 일반자바(Model) <================> JSP,서블릿 통신
 *                request,session
 *                request.setAttribute(한개의 JSP), session.setAttribute(프로젝트 전체 JSP)   
 * 사용자 요청(.do) =======> Controller(DispatcherServlet)
 *              request   service(HttpServletRequest request)=>Tomcat에 의해 호출            
 *              
 * Controller: Model에 있는 메소드 찾기=> 실행=> 메소드 실행결과를 JSP로 전송
 *              ㄴ 조건문, Annotation(자유로움: 구분문자만 맞춰주면 메소드명을 통일하지 않아도 됨)  
 *                                 =>POJO(loosely coupling,결합도를 약하게)         
 */
public class DispatcherServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
   //Model을 저장=>사용자 요청=>찾아주는 역할
   //Model class를 모아서 메모리 할당 => 찾기
   List<String> clsList=new ArrayList<String>();//전체 패키지 자바파일(4개)
   public void init(ServletConfig config) throws ServletException {
      String xmlPath=config.getInitParameter("contextConfigLocation");
      //C:\\webDev\\webStudy\\OnLineStudy18_MVCFinal\\src
      String path=config.getInitParameter("path");//프로젝트 path일치 유의!!
      System.out.println("xml-path:"+xmlPath);
      System.out.println("path:"+path);
      try{
         DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
         DocumentBuilder db=dbf.newDocumentBuilder();//파서기 생성
         Document doc=db.parse(new File(xmlPath));
         // 루트 태그
         Element root=doc.getDocumentElement();
         // 회원가입 , 로그인(세션)=> 상세 => 쿠키 => 찜하기 , 예매처리 
         NodeList list=root.getElementsByTagName("component-scan");
         ComponentScan com=new ComponentScan();
         for(int i=0;i<list.getLength();i++)
         {
            Element cs=(Element)list.item(i);
            String pack=cs.getAttribute("base-package");
            List<String> cList=com.fileConfig(pack, path);//패키지 하나의 자바파일(2개)
            for(String s:cList)
            {
               System.out.println(s);
               clsList.add(s);
            }
         }
         
      }catch(Exception ex) {}
      System.out.println("DispatcherServlet");
      for(String s:clsList)
      {
         System.out.println(s);
      }
   }   

   //요청 결과값=>해당 JSP로 전송
   protected void   service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //메소드 찾아서 수행=>해당 JSP로 전송
      //사용자가 요청한 내용을 받는다
      String cmd=request.getRequestURI();
      // main/main.do
      cmd=cmd.substring(request.getContextPath().length()+1);// /OnLineStudy18_MVCFinal/
      try {
         //메모리 할당(Model클래스 메모리 할당)=> clsList
         //new MainModel() => Controller(한 개)=> 공유(수정을 하면 유지보수가 어려움 =>고정)
         //XML => C/Java/C#/JavaScript
         for(String cls:clsList) {
            Class clsName=Class.forName(cls);
            Object obj=clsName.newInstance();
            //MainModel,MovieModel,MyPageModel,RequestModel의 객체
            /*
             * 모든 클래스는 Object 상속
             * Object obj=new A();
             * obj=new B();
             */
            //메소드 찾아서 호출(invoke)
            Method[] methods=clsName.getDeclaredMethods();
            //클래스에 선언된 모든 메소드를 가지고 온다
            for(Method m:methods) {
               RequestMapping rm=m.getAnnotation(RequestMapping.class);
               if(cmd.equals(rm.value())) {
                  String jsp=(String)m.invoke(obj,request);
                  if(jsp.equals("redirect")){//_ok.jsp
                     response.sendRedirect(jsp.substring(jsp.indexOf(":")+1));//list.do
                     //return redirect:list.do=>다시 실행
                     //return "../main/main.jsp":평상시(forward)
                  } else {
                     RequestDispatcher rd=request.getRequestDispatcher(jsp);
                     rd.forward(request,response);
                  }
                  return;//종료(response=>사용자에게 데이터 전송시 한번만 수행)
               }
            }
         }
      }catch(Exception ex) {
         ex.printStackTrace();
      }
   }   
}