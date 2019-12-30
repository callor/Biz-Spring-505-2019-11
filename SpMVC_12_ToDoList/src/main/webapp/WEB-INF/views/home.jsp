<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<body>
<header>
	<h3>TO DO LIST</h3>
</header>
<section>
	<article id="input">
		<form>
			<table class="input">
				<tr>
					<th>작성일</th>
					<td><input type="date" name="td_date"></td>
					<th>작성시각</th>
					<td><input type="time" name="td_time"></td>
				</tr>
				<tr>
					<th>할일</th>
					<td colspan="3"><input type="text" name="td_work"></td>
				</tr>
			</table>
		</form>
	</article>
	
	<article id="list">
	
	</article>
</section>
</body>
</html>