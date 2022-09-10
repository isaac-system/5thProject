<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>GuitarList</title>
<link rel="stylesheet" href="${path}/css/style.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:"${path}/guitarReview.do",
			dataType: "html",
			data: "guitarid=${guitarid}",
			success: function(data){
				$("div.r_box").html($.parseHTML(data));
			}
		});
	});
</script>
<style>
.glist {
	display:flex;
	flex-flow: row wrap;
	
}
.d_box {
	display: flex;
	flex-direction: row;
	flex-wrap:wrap;
	width: 900px;
	height: 400px;
	padding: 10px;
	justify-content: space-between;
	align-items: center;
}
.d_item{
	width:33%;
}
img.guitar {
	max-width: 100%;
	max-height: 100%;
}
div.img {
	display:flex;
	align-items:center;
	width: 230px;
	height: 330px;
}
table.spec{
	text-align: left;
}
table.link{
	text-align: center;
}
table {
	width: 95%;
}
th {
	background-color: #efefef;
}
tr {
	padding: 15px;
}
th, td {
    border: 1px solid #efefef;
 }
.review{
	width: 600px;
	text-align: left;
}
.r{
	padding: 15px;
}
.r_info {
	background-color: #efefef;
	padding:15px;
}
.review {
	width: 600px;
}
.r_head{
	height: 50px;
}
.r_head span {
	float: left;
	font-weight: bold;
	padding: 10px;
}
.r_head a {
	float: right;
	padding: 10px;
}
.r_box{
	text-align: left;
}
</style>
</head>
<body>
<h1>${gid }</h1>
    <div class="wrapper">
        <div id="header">
            <ul id="login">
            	<c:if test="${empty sessionScope.loginMember}">
                <li><a href="${path}/login.do">로그인</a></li>
                </c:if>
                <c:if test="${not empty sessionScope.loginMember}">
                <li>${sessionScope.loginMember.name} 님 : <a href="${path}/logout.do">로그아웃</a></li>
                </c:if>
            </ul>
            <div class="logo">
                <a href="${path}/main.do"><img src="${path}/css/images/logo.png" alt="기타리스트 로고"></a>
            </div>
            <nav class="main_nav">
                <ul id="main_menu">
                    <li><a href="${path}/eventList.do">이벤트</a></li>
                    <li><a href="${path}/recommend.do">상품추천</a></li>
                    <li><a href="">상품비교</a></li>
                    <li><a href="">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
        <hr>
        <div id="container" align="center">
        	<div class="d_box">
        		<div class="d_item"><img class="guitar" src="${guitar.img}"/></div>
        		<div class="d_item">
        			<table class="spec">
        				<col width="30%"/>
        				<tr><th>제품명</th><td>${guitar.gname}</td></tr>
        				<tr><th>브랜드</th><td>${guitar.brand}</td></tr>
        				<tr><th>색상</th><td>${guitar.color}</td></tr>
        				<tr><th>넥</th><td>${guitar.neck}</td></tr>
        				<tr><th>브릿지</th><td>${guitar.bridge}</td></tr>
        				<tr><th>등급</th><td>${guitar.standard}</td></tr>
        			</table>
        		</div>
        		<div class="d_item">
	        		<table class="link">
	        		<col width="30%"/>
	        		<tr><th>사이트명</th><th>가격</th></tr>
	       			<c:forEach var="s" items="${seller}">
		       			<tr><td>${s.sname}</td><td><fmt:formatNumber type="currency">${s.price}</fmt:formatNumber></td></tr>
	       			</c:forEach>
	       			</table>
	        	</div>
	        	
        	
        	</div>
        	<div class="review">
        	<div class="r_head">
        		<span>사용 후기</span>
        		<a href="${path}/reviewInsertForm.do">리뷰작성</a>
        	</div>
        	<hr>
        	<div class="r_box">
	        	
        	</div>
        	</div>
        </div>
        
        <footer>
            <div class="footer_info">
                <span><img src="${path}/css/images/logo_white.png" alt="footer_logo" height="70"></span><br>
                <span>(주)기타리스트 | 대표자: 3조</span><br>
                <span>5차프로젝트: 2022-서울마포-0720 | 개인정보보호책임자: 3조 | 이메일: guitarlist@guitarlist.com</span><br>
                <span>주소: 서울시 마포구 서교동 447-5 풍성빌딩 2,3,4층</span><br>
                <span>@GUITARLIST.ALL RIGHTS RESERVED</span>
            </div>
        </footer>
    </div>
</body>
</html>