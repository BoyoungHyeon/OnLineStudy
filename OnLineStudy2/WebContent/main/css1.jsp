<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- ���� CSS -->
<style type="text/css">
/*
	div#aaa
	#aaa 
*/
#aaa {
	/*ũ��*/
	width:200px;
	height:300px;
	/* 
	margin
	   =============
	   
	   AAA
	   padding
	   =============
	   
	=========================
	padding : (top) (left) (bottom) (right)
	padding : 20px
 			  20px  (20px) (20px) (20px)   
 	padding : 50px 20px
 			  50px  (20px) (50px) (20px)   
 	padding : 50px 20px 30px (20px)
 			  top => bottom
 			  left => right
 	=======================================
 	 margin, padding => ȭ�� ����		  	  		  
	*/
	padding: 20px;
	border : 1px solid red;
	margin: 50px;
	/* ���� ���� 
		font-size : ���� ũ��
		font-weight : bold
		font-face : �۲� ==> �ܺο��� �ҷ��� ���(google)
		
		����Ʈ : ���� �۲��� ���(google��Ʈ ����)
	*/
	font-size: 12pt; /*��Ʈ�� �⺻:10pt*/
	font-weight: bold;
	font-face:���� ���;
}
</style>
</head>
<body>
	<!-- ȭ����� -->
	 <!-- 
	 ���� �±׸��� ������ �� : id(�Ѱ��� �̿�), class(���� �±װ� �������� ���ÿ� ����)
	  -->
	<div id="aaa">CSS (Box-Model):����CSS</div><%-- display:block --%>
	<%--�ζ��� --%>
	<%--
		���� (����, �켱����)
		�ܺ� CSS
		���� CSS
		�ζ���
		  ==> bootstrap
	 --%>
	 <!-- 
	  solid
	  botted
	   ==> ī�常���
	  -->
	<div style="border: 5px solid green; width:100px; height:100px"></div>
	<div style="border: 5px dashed green; width:100px; height:100px"></div>
	<div style="border: 5px dotted green; width:100px; height:100px"></div>
	<div style="border: 5px double green; width:100px; height:100px"></div>
	<div style="border: 5px ridge green; width:100px; height:100px"></div>
	<div style="border: 5px outset green; width:100px; height:100px"></div>
	<div style="border: 5px groove green; width:100px; height:100px"></div>
</body>
</html>