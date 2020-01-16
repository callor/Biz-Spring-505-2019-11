<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  
					prefix="form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<%@ include file="/WEB-INF/views/include/include-head.jspf" %>
<script>
$(function(){
	
})
</script>
<style>
	.input-box {
		display: flex;
		width: 80%;
		margin:5px auto;
	}
	
	.input-box input {
		color:black;
		border:none;
		border-bottom: 1px solid rgb(52,152,219);
		display: block;
		
		width: 100%;
		padding:8px;
	}
	
	#rb_bcode {
		width:50%;
		margin-right: 5px;
	}
	
	
</style>

</head>
<body>
<header>
	<h2>MY READ BOOK</h2>
</header>
<%@ include file="/WEB-INF/views/include/include-nav.jspf" %>
<style>
	article {
		display: flex;
		flex-flow: wrap;	
	}
	
	div {
		display: inline-block;
		width: 70%;
		padding:5px 16px;
		margin:5px;
		background-color: #eee;
	}
	
	div.title-box {
		width:25%;
		background-color: #ccc;
		text-align: right;
	}

</style>

<section>
	<article>
		<div class="title-box">도서정보</div>
		<div>${RBOOK.rb_bcode}, ${RBOOK.rb_bname}</div>
		
		<div class="title-box">읽은때</div>
		<div>${RBOOK.rb_date}, ${RBOOK.rb_stime} 부터 ${RBOOK.rb_rtime}시간동안 읽음</div>
		
		<div class="title-box">한줄평</div>
		<div>${RBOOK.rb_subject}, ${RBOOK.rb_star}</div>
	</article>
</section>

</body>
</html>