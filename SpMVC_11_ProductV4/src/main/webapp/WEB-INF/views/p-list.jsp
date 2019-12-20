<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<script>
$(function(){
	
	$("tr.p-row").click(function(){
		let p_code = $(this).attr("data-id")
		$.ajax({
			
			// "getProduct?p_code=" + p_code
			url : "${rootPath}/rest/getProduct",
			data : {p_code : p_code}, // p_code
			dataType : 'json',
			success : function(result) {
				
				$("#p_code").val(result.p_code)
				$("#p_name").val(result.p_name)
				$("#p_iprice").val(result.p_iprice)
				$("#p_oprice").val(result.p_oprice)
				$("#p_file").val(result.p_file)
				if(result.p_vat == "1") {
					$("#p_vat").attr("checked","checked")	
				} else {
					$("#p_vat").attr("checked","")
				}
				$("#p_sub_list").html("")
				if(result.p_files.length > 0) {
					
					result.p_files.forEach(function(file){
						$("#p_sub_list").append(
							$("<img/>",{
								width:"100px",
								height:"100px",
								margin:"10px",
								src : "${rootPath}/files/" 
									+ file.file_upload_name  
							})
						)
					})
				}
			},
			error : function() {
				alert("서버 통신 오류")
			}
		})
	})
})

</script>
<style>
	td, th {
		white-space: nowrap;
	}
</style>
<body>
	<table class="p-list table table-striped table-hover">
		<thead class="thead-dark">
		<tr>
			<th>상품코드</th>
			<th>상품이름</th>
			<th>매입단가</th>
			<th>매출단가</th>
			<th>대표이미지</th>
			<th>보조이미지</th>
		</tr>
		</thead>
		<c:forEach items="${PLIST}" var="vo">
			<tr class="p-row" data-id="${vo.p_code}">
				<td>${vo.p_code}</td>
				<td>${vo.p_name}</td>
				<td>${vo.p_iprice}</td>
				<td>${vo.p_oprice}</td>
				<td>${vo.p_file}</td>
				<td>${vo.p_files}</td>
			</tr>					
		</c:forEach>
	</table>
</body>
</html>