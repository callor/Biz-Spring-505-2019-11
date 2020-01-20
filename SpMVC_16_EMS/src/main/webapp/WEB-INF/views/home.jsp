<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>MY EMS</title>
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/main.css?ver=2020-01-20">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/table-list.css?ver=2020-01-20">

</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jspf" %>
<%@ include file="/WEB-INF/views/body/ems/list.jsp" %>
</body>
</html>