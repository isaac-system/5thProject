<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
a{
    text-decoration: none;
    color: black;
}
#header {
	width:100%;
	border-bottom: 0.5px solid #e5e5e5;
}
#header #login{
    border-bottom: 1px solid #e6e8eb;
    list-style: none;
    display: flex;
    justify-content: right;
    padding-right: 5em;
}

/*logo 영역*/
.logo{
    margin-top: 3em;
    text-align: center;
}

/*main_menu 영역*/
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
nav{
    height:15vh;
    padding-bottom:3vh;
    width: 50vw;
    min-width: 600px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin: 0 auto;
}
nav a{
    position: relative;
    text-decoration: none;
    font-family: 'Noto Sans KR', sans-serif;
    color: #bfbfbf;
    font-size: 18px;
    font-weight: bold;
    letter-spacing: 0.5px;
    padding: 0 10px;
}

nav a:after{
    content: "";
    position: absolute;
    background-color: #333;
    height: 3px;
    width: 0;
    left: 0;
    bottom: -10px;
    transition: 0.3s;
}
nav a:hover{
    color: #333;
}
nav a:hover:after{
    width: 100%;
}

</style>
</head>
<body>
	<div id="header">
		<ul id="login">
			<c:choose>
			<c:when test="${empty member}">
			<li><a href="${path}/login.do">로그인</a></li>
			</c:when>
			<c:when test="${not empty member}">
			<span style="color:#3CB371;margin-right: 8px">${member.nick}님</span> 
			<li><a href="${path}/logout.do">로그아웃</a></li>
			</c:when>
			</c:choose>
		</ul>
		<div class="logo">
			<a href="${path}/main.do">
			<img src="${path}/css/images/logo.png" alt="기타리스트 로고">
			</a>
		</div>
		<nav>
		    <a href="${path}/eventList.do">이벤트</a>
		    <a href="${path}/recommend.do">상품추천</a>
		    <a href="">상품비교</a>
		    <a href="${path}/community.do">커뮤니티</a>
		</nav>
	</div>
</body>
</html>