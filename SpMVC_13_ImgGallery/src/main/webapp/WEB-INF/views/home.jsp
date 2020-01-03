<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 갤러리</title>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js -->

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
<script>
$(function(){
	$("#img_text").summernote({
		lang:'ko-KR',
		placeholder:'본문을 입력하세요',
		width:'95%',
		
	})
})

</script>
<style>
	* {
		box-sizing: border-box;
		margin:0px;
		padding:0px;
	}
	
	body {
		width:100%;
	}

	header {
		background-color: #41D3BD;
		margin:0;
		padding:1rem;
		color:white;
	}
	
	#img_box {
		border:1px solid green;
		display: flex;
		flex-wrap: wrap;
	}
	
	.img_panel {
		padding:0.01rem 16px;
		margin-top:16px;
		margin-bottom: 16px;
	}
	
	
	.img_card {
		width:200px;
		height: 200px;
		margin:10px;
		
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.16),
 		0 4px 20px 0 rgba(0,0,0,0.19)
	}
	
	.bz-button {
		border:none;
		display: inline-block;
		padding:8px 16px;
		margin:5px;
		vertical-align: middle;
		text-decoration: none;
		color:white;
		background-color: blue;
		text-align: center;
		cursor: pointer;
		white-space: nowrap;
	}
	
	.bz-button:hover {
		box-shadow: 0 8px 16px rgba(0,0,0,0.2),
			0 6px 20px 0 rgba(0,0,0,0.2)
	}
	
	input[type="text"] {
		padding:8px;
		display: block;
		border: 1px solid #ccc;
		border-radius:5px;
		width:95%;
		margin:8px auto;
	}
	


</style>
<script>
$(function(){
	
	$("#btn_img_up").click(function(){
		document.location.href = "${rootPath}/image/upload"
	})
	
})

</script>

</head>
<body>
<header>
	<h3>이미지 갤러리</h3>
</header>
<section>
	<c:if test="${BODY == 'UPLOAD'}">
		<%@ include file="/WEB-INF/views/body/img_upload.jsp" %>
	
	</c:if>
</section>

<section id="img_box">
	<c:forEach begin="1" end="10">
		<%@ include file="/WEB-INF/views/include/img_card.jsp" %>
	</c:forEach>
</section>
<section>
	<button id="btn_img_up" class="bz-button">이미지 올리기</button>
</section>

</body>
</html>