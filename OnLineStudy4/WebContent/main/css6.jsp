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
.row{
	width:600px;
	margin: 0px auto;
}

</style>   
</head>
<body>
	<div class="container">
		<div class="row">
		<table class="table-bordered">
		 <tr>
		   <th class="text-right danger" width=20%>�̸�</th>
		   <td width=80%>
		   	<input type=text size=15 class="input-sm">
		   </td>
		 </tr>
		 <tr>
		   <th class="text-right danger" width=20%>�μ���</th>
		   <td width=80%>
		   	<select class="input-sm">
		   	 <option>���ߺ�</option>
		   	 <option>������</option>
		   	 <option>�ѹ���</option>
		   </td>
		 </tr>
		 <tr>
		  <td colspan="2" class="text-center">
		    <input type=button class="btn btn-sm btn primary" value="����">
		    <input type=button class="btn btn-sm btn primary" value="����">
		 </tr>
		</table>
		
		</div>
	</div>
</body>
</html>