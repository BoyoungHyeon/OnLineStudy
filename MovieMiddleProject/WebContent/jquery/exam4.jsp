<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	/* $('.image').css("width","200px").css("height","200"); */
	$('.image').click(function(){
		$(this).css('opacity',0.3);
		$(this).css("cursor","pointer");
	},function(){
		$(this).css('opacity',1.0);
	})
	$('.image').css({"width":"200px","height":"200"});
	
		let src=$(this).attr("src");
		/* $('div').text('<img src='+src+' width=450 height=500>'); */
		$('div img').attr("src",src);
	})
})
</script>
</head>
<body>
	<img class="image" src="http://img1.daumcdn.net/thumb/C155x225/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F5ba5252e3470820463aa807bc82e2aa1cfc4f077" >
	<img class="image" src="http://img1.daumcdn.net/thumb/C155x225/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fcd5cff312e3ec6beb42b4767c2c89964dd4eca70" >
	<img class="image" src="http://img1.daumcdn.net/thumb/C155x225/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F22796a0f09538ee8677f52f3df5e15bc0b833fe0" >
	<img class="image" src="http://img1.daumcdn.net/thumb/C155x225/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3b3d8a8a743e8fe8d92fa772ccbef8b7d757eac9" >
	<img class="image" src="http://img1.daumcdn.net/thumb/C155x225/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F48a7606ae74c451994f8894365b5fb001576632515132" >
	<div>
		<img src="" width=450 height=500>
	</div>
</body>
</html>