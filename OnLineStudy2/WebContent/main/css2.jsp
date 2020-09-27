<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
  ���� Selector
  �±� : ����(�� a:hover, p:active)
 li:nth-child(1) (2) (3)... => �޴� ����
 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
a:link{
	color:darkgrey;
}
a:visited{
	color:green;
}
/*
	���(���콺)
*/
a:hover{
	cololr:orange;
}
/*
	active : ���콺 Ŭ��
	hover : ���콺 ���� ���� ��
*/
p:active {
	color:red;)
}
/*
	�ڽ��ȿ� ���콺 Ŭ�� => focus
*/
input:focus{
	background:blue;
}
/*
	table, dl, li => ������ �����ؼ� ã�� ���
	nth-child(1~)
*/
li:nth-child(1) {
	color:red;
}
li:nth-child(2) {
	color:blue;
}
li:nth-child(3) {
	color:green;
}
li:nth-child(4) {
	color:pink;
}
li:nth-child(5) {
	color:yellow;
}
li:nth-child(6) {
	color:darkgrey;
}
/*
	������ ����(Jsoup)
*/
tr:nth-child(1) {
	background-color:orange;
}
tr:nth-child(2n) {
	background-color:RGB(255,255,200);
}
</style>
</head>
<body>
	<!-- ����Ʈ �̵�(��Ʈ �±�) -->
	<!-- 
		a : �ζ��� �Ӽ� => ���� ���
		
		div, ul, ol, h1~h6 => block
		a input img => inline
	 -->
	 <a href="http://daum.net" style="display: block;">����</a>
	 <%-- \n�� �����Ѵ�(block) --%>
	 <a href="http://naver.net" style="display: block;">���̹�</a>
	 <p>Ŭ���ϼ���</p>
	 <input type=text size=15>
	 <ul>
	 	<li>�ڹ�</li>
	 	<li>����Ŭ</li>
	 	<li>������</li>
	 	<li>MyBatis</li>
	 	<li>JavaScript</li>
	 	<li>Ajax</li>
	 	<li>React</li>
	 </ul>
	 <table border=1 bordercolor=black width=500>
	 	<tr>
	 		<th>�̸�</th>
	 		<th>����</th>
	 		<th>����</th>
	 		<th>����</th>
	 	</tr>
	 	<tr>
	 		<th>ȫ�浿</th>
	 		<th>89</th>
	 		<th>90</th>
	 		<th>78</th>
	 	</tr>
	 	<tr>
	 		<th>�ڹ���</th>
	 		<th>88</th>
	 		<th>90</th>
	 		<th>70</th>
	 	</tr>
	 </table>
</body>
</html>