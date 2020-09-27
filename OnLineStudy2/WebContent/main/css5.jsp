<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.sist.dao.*"%>
    
<%
   EmpDAO dao = new EmpDAO();
   ArrayList<MovieVO> list = dao.movieListData();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#list-table{
   border: 1px solid black;
   border-collapse: collapse;
}
#list-table tr:nth-child(1){
   background-color: #999;
   font-family: 맑은 고딕;
}
h1{
   text-shadow: 5px 5px 3px gray;
}
.container{
   width: 1300px;
   border: 1px solid red;
}
.row{
   width: 1200px;
   margin: 0px auto;
}
h1{
   text-align: center;
}

.aaa{
   width: 30px;
   height: 30px;
   border-radius: 30px;
}
#list-table td{
   border-bottom-width: 1px;
   border-bottom-style: dotted;
   border-bottom-color: black;
   font-family: 맑은 고딕;
   font-size: 9pt;
}
#list-table .dataTr:hover{
   background-color: red;
   cursor: pointer;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
   $('.dataTr').click(function(){
      var no = $(this).attr("value");
      $.ajax({
         type:'post',
         url:'detail.jsp',            // 전송받을 주소
         data:{"no":no},               // 보내주는 값
         success:function(result){      // 정상수행시 처리
            $('#detail').html(result);
         }
      })
   });
});
</script>
</head>
<body>
   <div class="container">
      <div class="row">
         <h1>영화목록</h1>
         <table width=1200>
            <tr>
               <td>
                  <table id="list-table" width=60%>
                     <tr>
                     <th>번호</th>
                     <th></th>
                     <th>제목</th>
                     <th>감독</th>
                     <th>장르</th>
                     </tr>
                     <%
                     for(MovieVO vo : list){
                     %>
                     <tr class="dataTr" value="<%=vo.getMno() %>">
                     <td><%=vo.getMno() %></td>
                     <td>
                        <img src="<%=vo.getPoster()%>" class="aaa">
                     </td>
                     <td><%=vo.getTitle() %></td>
                     <td><%=vo.getDirector() %></td>
                     <td><%=vo.getGenre() %></td>
                     </tr>
                     <%   
                     }
                     %>
                  </table>
               </td>
               <td id="detail" valign="top">
               </td>
            </tr>
         </table>
      </div>
   </div>
</body>
</html>