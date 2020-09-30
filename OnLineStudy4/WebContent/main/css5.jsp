<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
   border: 1px solid black;
   height: 760px;
}

.row {
   /*border: 1px solid red;
   height: 350px;
   /*가운데 정렬*/
   margin: 0px auto;
   width: 700px;
}

text_center{
 text-align: center;
 font-family: 맑은 고딕;
}
h1{
	text-align:center;
	font-family : 맑은 고딕;
}
</style>
</head>
<body>
   <%--
      ================================================ container
      
               <div class="row"></div>
      -------------------------------------------------
                                 
               <div class="row"></div>
      -------------------------------------------------
      
               <div class="row"></div>
      ==================================================

 --%>
   <%-- table input --%>
   <!-- row=> 한줄 처리 -->
   <div class="container">
      <div class="row">
         <h1>사원 목록</h1>
            <table class="table table-bordered">
            <%--
               색상
                  =>   danger  : red(분홍)
                  =>   success : 녹색
                  =>   warning : 주황색   
                  =>   info   : 하늘색
                  =>   default : 회색 
                  
             --%>
               <tr class="info">
                  <th class="text-center">사번</th>
                  <th class="text-center">이름</th>
                  <th class="text-center">직위</th>
                  <th class="text-center">근무지</th>
                  <th class="text-center">부서명</th>
               </tr>
               <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">홍길동</td>
                  <td class="text-center">대리</td>
                  <td class="text-center">서울</td>
                  <td class="text-center">개발부</td>
               </tr>
                <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">홍길동</td>
                  <td class="text-center">대리</td>
                  <td class="text-center">서울</td>
                  <td class="text-center">개발부</td>
               </tr>
                <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">홍길동</td>
                  <td class="text-center">대리</td>
                  <td class="text-center">서울</td>
                  <td class="text-center">개발부</td>
               </tr>
            </table>
      </div>
   </div>
</body>
</html>