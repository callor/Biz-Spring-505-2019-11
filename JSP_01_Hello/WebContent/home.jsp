<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
// 여기는 JSP파일내에 Java 코드를 작성하는 영역

int num1 = 30;
int num2 = 40;

int sum = num1 + num2;
System.out.println(sum);

%>    
<!DOCTYPE html>
<html>
<!-- 
head tag는 페이지에 대한 정보등을 기록하는 부분 
웹페이지에 표시되지는 않지만 웹페이지에 어떤 것을 표시하기 위한
다양한 설정등을 기록하는 부분
-->
<head>
	<meta charset="UTF-8">
	<!-- 웹페이지를 표시할때 제목으로 사용되는 문자열 -->
	<title>나의 첫번째 홈페이지</title>
</head>
<!-- 웹페이지에 나타날 정보들을 표시하는 영역 -->
<!-- 디자인과 관련된 문서표시를 하는 부분 -->
<body>
	<!-- h tag는 h1 ~ h6 까지 사용되며 본문보다 큰 글자를 표시 -->
	<h2>나는 Home.jsp 입니다</h2>
	<h3>반갑습니다</h3>
	<h4>우리나라만세</h4>
	<h4><%= sum %></h4>
</body>

</html>