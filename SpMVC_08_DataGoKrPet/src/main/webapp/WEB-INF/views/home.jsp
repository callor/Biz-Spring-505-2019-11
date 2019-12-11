<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:set var="rootPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>□□□ 나의 JSP 페이지 □□□</title>
<style>
	header {
		background-color: rgba(0,  255,  0,  0.3);
		color:blue;
		text-align: center;
		padding:0.5rem;
		text-transform: uppercase;
	}
	
	nav {
		background-color: green;
		position: relative;
	}
	
	nav input, nav select {
		width:300px;
		padding:8px;
		margin:10px;
		border : 1px solid orange;
		border-radius: 20px;
		
	}
	
	nav:hover:after{
		/* content: '동물병원 이름이나 주소를 입력하고 Entr를 누르세요'; */
		position: absolute;
		border:1px solid blue;
		background-color:white;
		top:40px;
		left: 30px;
		z-index: 3;
	}
	
	section.list {
		width:95%;
		margin:10px auto;
		overflow: auto;
	}

</style>
<link rel="stylesheet" type="text/css" href="${rootPath}/css/table-list.css">
</head>
<body>
<header>
	<h2>my pet life</h2>
</header>
<nav>
	<form>
		<select name="s_cat">
			<option value="hs">병원명</option>
			<option value="addr">주소</option>
		</select>
		<input type="text" name="s_text" placeholder="검색어를 입력한후 Enter...">
	</form>
</nav>
<section class="list">
	<table class="list">
		<tr>
			<th>동물병원의 이름</th>
			<th>도로명주소</th>
			<th>지번주소</th>
			<th>대행업소의 연락처</th>
			<th>위도</th>
			<th>경도</th>
			<th>데이터기준일</th>
		<tr>
		<c:choose>
			<c:when test="${empty H_LIST}">
				<tr><td colspan="7">데이터가 없음</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${H_LIST}" var="hs" varStatus="index">
					<tr>
						<td>${hs.apiDongName}</td>
						<td>${hs.apiNewAddress}</td>
						<td>${hs.apiOldAddress}</td>
						<td>${hs.apiTel}</td>
						<td>${hs.apiLat}</td>
						<td>${hs.apiLng}</td>
						<td>${hs.apiRegDate}</td>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</section>

</body>
</html>







