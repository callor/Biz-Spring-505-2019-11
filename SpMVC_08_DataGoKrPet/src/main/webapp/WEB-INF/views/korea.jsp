<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원찾기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<script>
$(function(){
	
	/*
	$(".map-areas area").mouseenter(function(){
		var idx = $(".map-areas area").index(this);
		$(".map-hovers img:eq(" + idx + ")").show();
		return false;
	}).mouseleave(function(){
		$(".map-hovers img").hide();
		return false;
	});
	*/
	
	$(function () {
		$("#map-gw").mouseover(function () {
			$("#image-main").attr("src", 'images/map/gwangju.png')
		}).mouseout(function () {
			$("#image-main").attr("src", 'images/map/korea.png')
		})

		$("#map-ch").mouseover(function () {
			$("#image-main").attr("src", 'images/map/jeonam.png')
		}).mouseout(function () {
			$("#image-main").attr("src", 'images/map/korea.png')
		})

		$("#map-se").mouseover(function () {
			$("#image-main").attr("src", 'images/map/seoul.png')
		}).mouseout(function () {
			$("#image-main").attr("src", 'images/map/korea.png')
		})

	
	})
	
	
});

</script>

<style>
* {
	margin : 0;
	padding : 0;
	box-sizing: border-box;

}

html {
	height: 100%
}

body {
    overflow-y: auto;
    width: 1200px;        
    /* body height를 100으로 설정하려면 html도 height를 같이 맞춰줘야함(html은 height가 기본적으로 없음) */
    height: 100%;
    margin: 0 auto;
}

area {
	border:1px solid yellow;
}

#head{
	position: relative;
	height: 420px;
}

header {
	margin:0;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
}

.logo-img {
	position: relative;
	top: 15px;
}

nav {

	margin: 0;
	padding: 0;
	background-color: white;
	color: black;

}

nav ul.main-nav {
	display: flex;
	font-size: 20px;
	list-style: none;
	margin: 0;
	padding:0;
	justify-content: flex-end;
	position: absolute;
	top: 85px;
	right: 0;
}


nav ul li a {
	margin: 0.3rem;
	display: block;
	color: inherit;
	padding: 14px 16px;
	text-decoration: none;
	transition: 0.5s;
}

nav ul li a:hover {
	padding: 14px 16px 9px 16px;
	border-bottom: 0.2em solid pink;
	font-weight: bold;
}

.bannerimg {
	margin: 0;
	padding: 0;
	
	position: absolute;
	top: 155px;
	left: 0;
	
}

#userimg a, #userimg a img {
	display: block;
	position: absolute;
	right: 0;
	top: 5px;
	
}

#con{

	position: relative;
}
/*
#container img{

	border: 1px solid red;
	display: block;
	z-index: 5;
}
.map-hovers #seoul{
	position: absolute;
	top:0;
	left:0;
	display: block;
}
*/

</style>


<body>


<div id="head">
		<header>
			<a class="logo-img" href="${rootPath}/"><img src="${rootPath}/images/logo.png" width=200 alt="로고이미지"></a>
		</header>
		
		<div id="userimg">
			<p><a href="${rootPath}/member/login"><img src="${rootPath}/images/userimg.png" width=62 alt="유저이미지"></a></p>
		</div>
		<nav>
			<ul class="main-nav">
				<li><a href="#">소개</a></li>
				<li><a href="#">병원찾기</a></li>
				<li><a href="#">피검사</a></li>
				<li><a href="#">상태보고서</a></li>
				<li><a href="#">커뮤니티</a></li>
			</ul>	
		</nav>
		<img class="bannerimg" 
			id="image-main" 
			src="${rootPath}/images/banner.png" 
			width=100% alt="배너이미지">
</div>

<!-- 
	<div id="map-of-korea">
		<img src="${rootPath}/images/map/korea.png" alt="한국지도.png" usemap="#image-map">
		<map name="image-map">
    		<area target="_self" alt="광주" href="${rootPath}/" coords="108,413,97,420,102,432,101,443,127,440,119,420" shape="poly">
			<area id="jeonam" onmouseover="this.src='${rootPath}/images/map/jeonam.png;'" onmouseout="this.src='${rootPath}/images/map/korea.png';" target="_blank" alt="전라남도" href="${rootPath}/#" coords="61,398,34,419,18,458,14,540,63,549,100,533,142,538,194,517,212,488,210,441,187,406,145,413,111,386,88,419,76,415,78,402" shape="poly">
		    <area id="seoul" target="_blank" alt="서울" href="${rootPath}/#" coords="115,100,105,109,118,123,132,132,146,107,138,104,128,100" shape="poly">
		</map>	
	</div>
 -->

	<div id="container">
		<img src="${rootPath}/images/map/korea.png"
				width="400"  height="625"
				class="map-trains" alt="한국지도" usemap="#image-map" />
	</div>
	<map name="image-map" id="image-map" class="map-areas">
		<area target="_self" id="map-gw"
				shape="poly" 
				coords="108,413,97,420,102,432,101,443,127,440,119,420" 
				href="#" alt="광주"/>
		<area target="_self" id="map-ch" 
				shape="poly" 
				coords="61,398,34,419,18,458,14,540,63,549,100,533,142,538,194,517,212,488,210,441,187,406,145,413,111,386,88,419,76,415,78,402" 
				href="#" 
				alt="전남">
		<area target="_self" 
				shape="poly" id="map-se" 
				coords="115,100,105,109,118,123,132,132,146,107,138,104,128,100" 
				href="#" 
				alt="서울">
	</map>

	
<footer>
		<address>CopyRight &copy; hyerin.you@gmail.com</address>
</footer>

</body>

</html>