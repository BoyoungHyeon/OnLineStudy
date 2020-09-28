<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.inline img{
   width:100px;
   height:150px;
   display:inline;
   margin: 10px;
}
.block img{
   width:100px;
   height:150px;
   display:block;
   margin: 10px; /*top=10 left=10 bottom=10 right=10*/
}
nav{
	background-color: #999;
}
nav ul li{
	display: inline-block;
	margin: 20px;
}
a{
	text-decoration: none;
	color:white;
	font-family:���� ���;
}
a:hover{
	text-decoration: underline;
	color:green;
	font-family:���� ���;
}
div{
	width:100px;
	height:100px;
	margin:30px;
	display:inline-block;
	/*HTML5 => ���̺� ����� ���� ����*/
}
</style>
</head>
<body>
   <!-- <div class="inline">
      <img src="b.jpg">
      <img src="b.jpg">
      <img src="b.jpg">
   </div>
   <div class="block">
      <img src="b.jpg">
      <img src="b.jpg">
      <img src="b.jpg">
   </div> -->
   <!--  
 		header
 		section
 		aside
 		footer
 		nav		
    -->
    <nav><!-- �޴� -->
    	<ul>
    		<li><a href="#">��ȭ</a></li>
    		<li><a href="#">����</a></li>
    		<li><a href="#">����</a></li>
    		<li><a href="#">������</a></li>
    		<li><a href="#">���θ�</a></li>
    	</ul>
    </nav>
    <div style="background:green"></div>
    <div style="background:red"></div>
    <div style="background:blue"></div>
</body>
</html>