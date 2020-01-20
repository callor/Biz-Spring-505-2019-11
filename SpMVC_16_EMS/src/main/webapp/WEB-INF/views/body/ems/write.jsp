<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<form:form modelAttribute="naverVO" enctype="multipart/form-data">
	
	<div class="in-box">
		<label for="from_email">보내는 Email</label>
		<form:input path ="from_email" />
	</div>
	
	<div class="in-box">
		<label for="to_email">받는 Email</label>
		<form:input path ="to_email" />
	</div>
	
	<div class="in-box">
		<label for="send_date">작성일자</label>
		<form:input path ="send_date" />
	</div>
	
	<div class="in-box">
		<label for="send_time">작성시각</label>
		<form:input path ="send_time" />
	</div>
	
	<div class="in-box">
		<label for="from_name">작성자</label>
		<form:input path ="from_name" />
	</div>
	
	<div class="in-box">
		<label for="to_name">받는사람</label>
		<form:input path ="to_name" />
	</div>
	
	<div class="in-box">
		<label for="subject">제목</label>
		<form:input path ="subject" />
	</div>

	<div class="in-box">
		<form:textarea path ="content" />
	</div>

</form:form>
