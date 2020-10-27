<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 라이브 러리 로드 방법 
      1. 원격 
      2. 내부 
 -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// JavaScript => 태그를 추가, 데이터 변경, 화면 이동 => 이벤트(프로그래머 마다 처리기능이 틀리다. 통일화 시켜줘야함)
/*
 *    JQUERY ( Dom프로그램 :) 
 *  ====================
        1.css 변경, 2.데이터 변경
           MR => 데이터 저장 공간
                 <input type=text id="name" value="저장 위치"> => val()
                 <td value="저장위치">저장위치</td> => '저장위치'는 text() 로 가져옴
                 =================  ==========
                    속성값 : attr("속성명")
                    
                    <img src=""/>
                    => getter ( val() <- 처럼 빈 괄호)
                       val(),text(),attr("src")
                       
                       <div id="aaa">
                       <span>test</span>
                       </div>
                       
                       div.text() => 태그는 제외 ==> Test
                       div.html() => <span>Test</span>
                       
                    => setter
                       val("aaa"),text("aaa"),attr("src","a.jpg");
                    
                       html().append() => 추가할때 사용
                       
                          태그를 가지고 오는 방법(Selector)
                          =id
                             <input type=text id="id"> => ${'#id'}.val("")
                          =class
                             <input type=text class="id"> => ${'.id'}.val("")
                          =tag명
                             <td></td> => $('td')
                          =소속관계
                             <div id="aaa">
                                <input type=text>
                             </div>
                             <div id="bbb">
                                <input type=text>
                             </div>
                             ${'input'}.val("admin"); -< 하면 여러군데에 값이 들어간다.
                             ${'#aaa input'}.val("admin"); -< 하면  aaa에 값이 들어간다.
                          =가상
                             ${'td:eq(1)'} <맨위에만 값을 채우고 싶을때> td:odd(홀수에만 값을 넣어준다)    td:even(짝수에만 값을 넣어준다.)
                                <tr>
                                   <td></td> 
                                   <td></td>
                                   <td></td>
                                </tr>
                                
                                
           ====================Jquery, Ajax ===> 브라우저에화면이 출력된 다음에 수행
                          javascript : window.onload    => main 과 동일  -> 항상 존재해야함
                          jquery :    $(function(){}) => main 과 동일  -> 항상 존재해야함 
                          react  : componentWillMount()
 */
/* function a(){document.write("a")}
function b(){document.write("b")}
function c(){document.write("c")}
function d(){document.write("d")}
function e(){document.write("e")}
window.onload=function(){
   a();
} */


// $(document).ready(function(){}) => 화면이 준비 끝나면   다만 document.ready 는 생략이 가능하다.
$(function(){
   //태그를 읽어서 제어
   /* $('h1').css("color","red")
   $('#a').css("color","green")
   $('div .b').css("color","blue") */
   $('h1:eq(0)').css("color","red");
   $('h1:eq(1)').css("color","green");
   $('h1:eq(2)').css("color","blue");
   $('h1:eq(3)').css("color","orange");
   $('h1:eq(4)').css("color","pink");
   $('h1:eq(0)').css("color","red");
})
</script>

</head>
<body>
   <h1>Java</h1>
   <h1 id="a">Oracle</h1>
   <h1>Jsp</h1>
   <h1 class="b" >Spring</h1>
   <div>
   	<h1 class="b">JavaScript</h1>
   </div>
</body>
</html>