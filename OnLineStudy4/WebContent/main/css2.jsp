<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#wrap{
   width:960px; /*bootstrap������ wrap�� �ƴ� container�� �Ǿ�����*/
             /* container (��üȭ��, width:960px))*/
   height:900px;
   margin:0px auto; 
   font-size:20px;
   text-align:center;
}
#header{
   width:960px;
   height:100px;
   background-color: cyan; 
   line-height: 100px; /*���� or �̹��� ��ġ ����*/
}
#nav{
   width:960px;
   height:100px;
   background-color: yellow; 
   line-height: 100px; /*���� or �̹��� ��ġ ����*/

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
   line-height: 100px; /*���� or �̹��� ��ġ ����*/
   color:white;
   float: left;
}
</style>
</head>
<body>
<%--
   ===================================================
            �ΰ� => header =>   ����, �ǽð� �˻���   
   ===================================================
            �޴�      =>      nav
   ===================================================
         

   ===================================================

   ===================================================
   

 --%>
 <div id="wrap">
    <div id="header">Header(�ΰ�) �κ�</div>
    <div id="nav">nav(�޴�) �κ�</div>
    <div id="aside">asdie(�ΰ�����) �κ�</div>
    <div id="section">section(����ȭ��) �κ�</div>
    <div id="footer">footer �κ�</div>
    
    </div>
</body>
</html>