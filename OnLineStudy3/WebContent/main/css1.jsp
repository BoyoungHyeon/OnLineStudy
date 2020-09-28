<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1) CSS 작업
			1. 외부, 2.내부 CSS, 3.인라인 CSS
			 => BootStrap (twitter) =반응형 (CSS라이브러리)
	2) JavaScript
			1. 라이브러리(Jquery)
			
	3) JSP => MVC
			1. 라이브러리 (Spring)
			
	4) JDBC => 오라클 연결
			1. MyBatis	
			
	==> Spring 기반(MVC) => Jquery => MyBatis		
	
	CSS
	===
	  1) 선택자 => bootstrap (class)
	     id
	     <a href="#" id="aaa"> : id는 태그당 한개만 지정
	     class
	     <a href="" class="aaa bbb ccc">
	          태그명	 
	  2) 가상
	 	 태그명 :선택자(a:hover)
	 	 id명 : 선택자(#aaa:hover)
	 	 class 선택자 (.data:hover)
	 	 
	 	 ==> Jquery (태그를 제어하는 프로그램) => DOM(Document Object Model)
	 	 ==> Jsoup (태그=> 선택자), reactjs,vuejs         
---%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.news{
	background-color:#0094ff;
	background-clip: content-box; /*배경 적용범위 : border-box, content-box, padding-box*/
	width:80%;
	padding:15px;
	border: 1px solid black;
	color : white;
}
</style>
</head>
<body>
	<div class="news">
	‘로또 청약’ 열풍 속에서 당첨자 10명 중 1명은 부적격으로 판명돼 당첨이 취소된 것으로 나타났다. 
	이 중 75%는 청약가점을 잘못 계산하는 등의 실수 때문에 기회를 날렸다.
	국회 국토교통위원회 소속 강준현 더불어민주당 의원이 15일 국토교통부로부터 제출받은 
	‘청약 부적격 당첨자 현황’에 따르면 2018년부터 지난달 말까지 청약 당첨 후 부적격으로 판정된 이는 
	총 4만8739명으로 전체 당첨자의 9.8%에 달했다.
	연도별로 보면 2018년에는 전체 당첨자 20만102명 중 1만8969명(9.5%)이, 
	지난해에는 17만9543명 중 1만9884명(11.3%), 올해 들어 지난달까지는 12만1991명 중 9886명(8.1%)이 
	부적격 당첨자로 판명됐다.
	</div>
</body>
</html>