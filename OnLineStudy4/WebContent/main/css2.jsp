<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#wrap{
   width:960px; /*bootstrap에서는 wrap이 아닌 container로 되어있음*/
             /* container (전체화면, width:960px))*/
   height:900px;
   margin:0px auto; 
   font-size:20px;
   text-align:center;
}
#header{
   width:960px;
   height:100px;
   background-color: cyan; 
   line-height: 100px; /*글자 or 이미지 위치 정렬*/
}
#nav{
   width:960px;
   height:100px;
   background-color: yellow; 
   line-height: 100px; /*글자 or 이미지 위치 정렬*/

}
#aside{
   width:300px;
   height:600px;
   background-color: green;
   line-height:600px;
   float: left;
} 
#section{
   width:660px;
   height:600px;
   background-color: red;
   line-height:600px;
   float: left;
}
#footer{
   width:960px;
   height:100px;
   background-color: black; 
   line-height: 100px; /*글자 or 이미지 위치 정렬*/
   color:white;
   float: left;
}
</style>
</head>
<body>
<%--
   ===================================================
            로고 => header =>   날씨, 실시간 검색어   
   ===================================================
            메뉴      =>      nav
   ===================================================
         

   ===================================================

   ===================================================
   

 --%>
 <div id="wrap">
    <div id="header">Header(로고) 부분</div>
    <div id="nav">nav(메뉴) 부분</div>
    <div id="aside">asdie(부가정보) 부분</div>
    <div id="section">section(실행화면) 부분</div>
    <div id="footer">footer 부분</div>
    
    </div>
</body>
</html>