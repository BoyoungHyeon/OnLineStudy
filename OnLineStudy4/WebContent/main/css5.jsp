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
   /*��� ����*/
   margin: 0px auto;
   width: 700px;
}

text_center{
 text-align: center;
 font-family: ���� ���;
}
h1{
	text-align:center;
	font-family : ���� ���;
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
   <!-- row=> ���� ó�� -->
   <div class="container">
      <div class="row">
         <h1>��� ���</h1>
            <table class="table table-bordered">
            <%--
               ����
                  =>   danger  : red(��ȫ)
                  =>   success : ���
                  =>   warning : ��Ȳ��   
                  =>   info   : �ϴû�
                  =>   default : ȸ�� 
                  
             --%>
               <tr class="info">
                  <th class="text-center">���</th>
                  <th class="text-center">�̸�</th>
                  <th class="text-center">����</th>
                  <th class="text-center">�ٹ���</th>
                  <th class="text-center">�μ���</th>
               </tr>
               <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">ȫ�浿</td>
                  <td class="text-center">�븮</td>
                  <td class="text-center">����</td>
                  <td class="text-center">���ߺ�</td>
               </tr>
                <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">ȫ�浿</td>
                  <td class="text-center">�븮</td>
                  <td class="text-center">����</td>
                  <td class="text-center">���ߺ�</td>
               </tr>
                <tr>
               	  <td class="text-center">1</td>
                  <td class="text-center">ȫ�浿</td>
                  <td class="text-center">�븮</td>
                  <td class="text-center">����</td>
                  <td class="text-center">���ߺ�</td>
               </tr>
            </table>
      </div>
   </div>
</body>
</html>