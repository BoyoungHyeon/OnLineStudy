<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- 변수설정, 제어문, URL : core --%>
<%-- 태그(XML)을 이용해서 자바 라이브러리를 만든다 : taglib --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 날짜 변경, 숫자 변경 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- String클래스의 메소드를 사용할 수 있게 만든 라이브러리 --%>
<%--
	JSTL => Java Standard Tag Library : XML형식
	1. 지원하는 태그와 속성만 사용할 수 사용이 가능
	2. 오버라이딩 => 사용자 정의 태그라이브러리
	3. JSP => View(화면출력 용도) => if, for, 다중 if
	
	=> 1.core
		<c:set var="" value=""> : 변수 설정
		      =====  ==========
		               키                값  ======> request.setAttribute(var에 저장된 키, value에 있는 값);
	         제어문
	    <c:if test="조건문">결과값</c:if>
	          if(test에 지정된 조건문)
	   2.fmt
	   3.function(fn)	               
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:formatNumber value="90000" pattern="00,000"/><br>
	<c:out value="Hello JSP"/><!-- Javascript : Jquery($) => ${} $출력때 씀-->
</body>
</html>