<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
   $('tr:eq(0)').css("background-color","#ccccff")
   $('td:nth-child(3n+2)').css("background-color",'#ccffcc');
//    nth-child 는 세로 단위

})
</script>
</head>
<body>
   <table border=1 bordercolor=black>
      <tr>
         <th>이름</th>
         <th>성별</th>
         <th>나이</th>
      </tr>
      <tr>
         <td>홍길동</td>
         <td>남자</td>
         <td>30</td>
      </tr>
      <tr>
         <td>심청이</td>
         <td>여자</td>
         <td>30</td>
      </tr>
      <tr>
         <td>박문수</td>
         <td>남자</td>
         <td>30</td>
      </tr>
      <tr>
         <td>강감찬</td>
         <td>남자</td>
         <td>30</td>
      </tr>
   </table>
</body>
</html>