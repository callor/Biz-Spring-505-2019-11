<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>□□□ 나의 JSP 페이지 □□□</title>
<style>
	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	
	body {
		width:95%;
		margin:0 auto;
	}
	
	header {
		background-color: rgba(0,255,0,0.5);
		padding:0.8rem;
		
	}
	
	

</style>
</head>
<body>
<header>
	<h3>복지로 서비스</h3>
</header>
<section>
	<%@ include file="/WEB-INF/views/BokSearch.jsp" %>
</section>


</body>
</html>