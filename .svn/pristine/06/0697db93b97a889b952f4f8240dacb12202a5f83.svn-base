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
<link rel="stylesheet" href="${path}/css/style2.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

.recommend {
	display:flex;
	flex:3;
	flex-flow: row wrap;
	justify-content: center;
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
.g_head{
	height: 50px;
}
.g_head span {
	float: left;
	font-weight: bold;
	padding: 10px;
}
.g_head a {
	float: right;
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
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url: "${path}/mainRec.do",
			dataType: "html",
			success: function(data) {
				console.log($.parseHTML(data));
				$("div.recommend").html($.parseHTML(data));
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
</script>
</head>
<body>
    <div class="wrapper">
        <div id="header">
            <ul id="login">
                 <li><a href="${path}/login.do">로그인</a></li>
            </ul>
            <div class="logo">
                <a href="${path}/main.do"><img src="${path}/css/images/logo.png" alt="기타리스트 로고"></a>
            </div>
            <nav>
                <a href="${path}/eventList.do">이벤트</a>
                <a href="${path}/recommend.do">상품추천</a>
                <a href="">상품비교</a>
                <a href="${path}/community.do">커뮤니티</a>
            </nav>
        </div>
        <hr>
        <div class="container">
            <div class="banner">
                <img src="http://musicforce.co.kr/web/upload/category/shop1_687_top_712260.jpg" alt="배너이미지">
            </div>	
            <div class="search">
                <form action="${path}/schList.do" id = "form1" method="post">
                    <div id="sch_cont">
                        <input name= "gname" class="search1" value="${param.gname}" placeholder="검색어를 입력하세요"/>
                        <div class="button">
                        <button id="allCk1" type="submit">검색</button>
                        </div>
                    </div>
                </form> 
            </div>
            <div>
	            <div class="g_head">
						<span>기타 추천</span>
				        <a href="${path}/recommend.do">추천 더보기</a>
					</div>
	            <div class="recommend">
	            	
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