<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
	 <c:forEach var="vo" items="${list }">
	  <tr class="theater" data-tno="${vo.tno }">
	   <td>${vo.tname(${vo.tloc }</td>
	   </tr>
	 </c:forEach>
	</table>
</body>
</html>