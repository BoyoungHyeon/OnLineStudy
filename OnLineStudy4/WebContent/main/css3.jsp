<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#wrap{
	width:960px;
	height:800px;
	margin:0px auto;
}
header{
	width:960px;
	height:200px;
	background-color:cyan;
	line-height: 200px;
	float: left;
}
aside{
	width:50%;
	height: 400px;
	background-color: red;
	line-height:400px;
	float: left;
}
section{
	width:50%;
	height: 400px;
	background-color: green;
	line-height:400px;
	float: left;
}
footer{
	width:960px;
	height:200px;
	background-color:black;
	line-height: 200px;
	color:white;
	float: left;
}
</style>
</head>
<body>
	<div id="wrap">
		<header>Header</header>
		<aside>Aside</aside>
		<section>Section</section>
		<footer>Footer</footer>
	</div>
</body>
</html>