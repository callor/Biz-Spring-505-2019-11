<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<style>
	* {
	 marign:0;
	 padding:0;
	 box-sizing: border-box;
	}
	
	header {
		padding:2rem 1rem;
		margin-bottom: 2rem;
		background-color: #E9ECEF;
		border-radius: 0.3rem;
	}
	
	table {
		border-collapse: collapse;
		width: 95%;
		margin:0 auto;
	}
	
	table,tr,td,th {
	
		border:1px solid gray;
	}
	
</style>
</head>
<body>
<header>
	<h3>TO DO LIST</h3>
</header>
<section>
	<article id="input">
		<form method="POST">
			<table class="input">
				<tr>
					<th>작성일</th>
					<td><input type="date" name="tdDate"></td>
					<th>작성시각</th>
					<td><input type="time" name="tdTime"></td>
				</tr>
				<tr>
					<th>할일</th>
					<td colspan="3"><input type="text" name="tdSubject"></td>
				</tr>
			</table>
		</form>
	</article>
	<article id="list">
		<c:if test="${!empty todoList}">
		<table>
			<tr>
				<th>no</th>
				<th>Flag</th>
				<th>제목</th>
				<th>완성</th>
			</tr>
			<c:forEach items="${todoList}" var="todo" varStatus="index">
				<tr>
					<td>${index.index}</td>
					<td>${todo.tdFlag}</td>
					<td>${todo.tdSubject}</td>
					<td>${todo.tdComplete}</td>
				</tr>
			</c:forEach>
		</table>
		</c:if>
	</article>
</section>
</body>
</html>
