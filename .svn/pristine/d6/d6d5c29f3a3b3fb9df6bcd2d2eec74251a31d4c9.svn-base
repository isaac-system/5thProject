<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="team3.vo.Member" %>
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
		if(${not empty sessionScope.loginMember}){
			$("#memRec").click(function(){
				$(this).css({"background-color":"black", "color":"white"});
				$("#revRec").css({"background-color":"white", "color":"black"});
				$.ajax({
					url: "${path}/memRec.do",
					dataType: "html",
					success: function(data) {
					
						$("div.glist").html($.parseHTML(data));
					},
					complete: function(){
						$("div.g_box").dblclick(function(){
							var gid = $(this).children("input").val();
							console.log(gid);
							location.href="${path}/guitarDetail.do?gid=" + gid;
						});
					}
				});
			});
			$("#revRec").click(function(){
				$(this).css({"background-color":"black", "color":"white"});
				$("#revRec").css({"background-color":"white", "color":"black"});
				$.ajax({
					url: "${path}/revRec.do",
					dataType: "html",
					success: function(data) {
					
						$("div.glist").html($.parseHTML(data));
					},
					complete: function(){
						$("div.g_box").dblclick(function(){
							var gid = $(this).children("input").val();
							console.log(gid);
							location.href="${path}/guitarDetail.do?gid=" + gid;
						});
					}
				});
			});
			$("#memRec").trigger("click");
		}
		else{
			$.ajax({
				url: "${path}/listByStars.do",
				dataType: "html",
				success: function(data) {
				
					$("div.glist").html($.parseHTML(data));
				},
				complete: function(){
					$("div.g_box").dblclick(function(){
						var gid = $(this).children("input").val();
						console.log(gid);
						location.href="${path}/guitarDetail.do?gid=" + gid;
					});
				}
			});
		}
	});
</script>
<style>
.glist {
	display:flex;
	flex-flow: row wrap;
	justify-content: center;
	width:1200px;
}
.g_box {
	display: flex;
	flex-direction: column;
	width: 250px;
	padding: 10px;
}
.g_item{
	padding: 3px;
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
.tab button{
	padding: 20px;
	margin: 20px;
	background-color: white;
}
</style>
</head>
<body>
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
        <c:if test="${not empty sessionScope.loginMember}">
        	<div class="tab">
        		<button type="button" id="memRec">회원맞춤 추천</button>
        		<button type="button" id="revRec">리뷰기반 추천</button>
        	</div>
        </c:if>
            <div class="glist">

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