<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  
			prefix="form"%>
<form:form modelAttribute="imageVO">
	<fieldset>

		<legend>이미지 갤러리 작성</legend>
		<div>
			<form:input type="text" 
				path="img_title"
				placeholder="제목을 입력하세요" />
		</div>
		<div>
			<form:textarea
				path="img_text"
				placeholder="제목을 입력하세요"/>
		</div>
		<div>
			<button class="bz-button">저장</button>
		</div>

	</fieldset>

</form:form>