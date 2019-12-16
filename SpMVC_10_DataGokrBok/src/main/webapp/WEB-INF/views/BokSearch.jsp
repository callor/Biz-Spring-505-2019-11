<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>□□□ 나의 JSP 페이지 □□□</title>
</head>
<body>
	<style>
fieldset div {
	display: flex;
}

fieldset {
	width: 80%;
	border: 1px solid green;
	border-radius: 10px;
	margin: 10px auto;
	padding:20px;
}

fieldset div {
	width:90%;
	margin:0 auto;
}

fieldset div label {
	display: inline-block;
	width: 15%;
	padding: 8px;
	margin: 2px;
	text-align: right;
	vertical-align: center;
	color: blue;
	font-weight: bold;
}

fieldset div input, fieldset div select {
	display: inline-block;
	width: 85%;
	padding: 8px;
	margin: 2px;
	border: 1px solid #ddd;
}


#srchKeyCode {
	width:30%;
}

#searchWrd {
 	width:50%;
}

button#btn-search {
	color: #fff;
	background-color: #007bff;
	border-color: #007bff;
	padding: 7px 30px;
	margin-top:10px;
	margin-left:auto;
	border-radius: 5px;
}


button#btn-search:hover  {
	color: #fff;
	background-color: #0069d9;
	border-color: #0062cc
}

button#btn-search.focus, button#btn-search:focus {
	color: #fff;
	background-color: #0069d9;
	border-color: #0062cc;
	box-shadow: 0 0 0 .2rem rgba(38, 143, 255, .5)
}
</style>
	<form:form modelAttribute="bokSearchDTO">
		<fieldset>
			<div>
				<label for="srchKeyCode">검색방법</label>
				<form:select path="srchKeyCode" label="검색분류">
					<form:options items="${SeMap.srchKeyCode}" />
				</form:select>
				<form:input path="searchWrd" label="검색어" />
			</div>

			<div>
				<label for="lifeArray">생애주기</label>
				<form:select path="lifeArray" label="생애주기">
					<form:options items="${SeMap.lifeArray}" />
				</form:select>
			</div>
			<div>
				<label for="charTrgterArray">대상특성</label>
				<form:select path="charTrgterArray" label="대상특성">
					<form:options items="${SeMap.charTrgterArray}" />
				</form:select>
			</div>
			<div>
				<label for="obstKiArray">장애유형</label>
				<form:select path="obstKiArray" label="장애유형">
					<form:options items="${SeMap.obstKiArray}" />
				</form:select>
			</div>
			<div>
				<label for="obstAbtArray">장애정도</label>
				<form:select path="obstAbtArray" label="장애정도">
					<form:options items="${SeMap.obstAbtArray}" />
				</form:select>
			</div>
			<div>
				<label for="trgterIndvdlArray">가구유형</label>
				<form:select path="trgterIndvdlArray" label="가구유형">
					<form:options items="${SeMap.trgterIndvdlArray}" />
				</form:select>
			</div>
			<div>
				<label for="desireArray">욕구</label>
				<form:select path="desireArray" label="욕구">
					<form:options items="${SeMap.desireArray}" />
				</form:select>
			</div>
			<div>
				<label></label>
				<button id="btn-search">조회</button>
			</div>
		</fieldset>
	</form:form>



</body>
</html>