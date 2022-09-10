<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>회원가입 - GuitarList</title>
<link rel="stylesheet" href="${path}/css/member/join.css">
<link rel="shortcut icon" href="${path}/css/images/logo.png">
<script src="${path}/a00_com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   <%-- 
   
   --%>   
});
</script>

</head>
<body>
    <div class="wrap">
		<form action="${path}/joinMember.do" id="join" class="form" name="join" method="post">
        <div class="join">
            <h2>JOIN</h2>
            <div class="email">
                <h4>이메일 주소</h4>
                <input type="email" name="email" id="email" placeholder="이메일 주소 입력">
            </div>
            <div class="id">
                <h4>아이디</h4>
                <input type="text" name="id" id="id" placeholder="영문 숫자 조합 4자 이상, 최대 20자" maxlength="20">
            </div>
            <div class="password">
                <h4>비밀번호</h4>
                <input type="password" name="pass" id="pass" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>
            <div class="password_ck">
                <h4>비밀번호 확인</h4>
                <input type="password" name="ckPass" id="ckPass" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>                              
            <div class="name">
                <h4>이름</h4>
                <input type="text" name="name" id="name" placeholder="이름을 입력하세요" maxlength="16">
            </div>
            <div class="nick">
                <h4>닉네임</h4>
                <input type="text" name="nick" id="nick" placeholder="닉네임을 입력하세요" maxlength="16">
            </div>      
            <div class="standard">
                <h4>나의 현재 LEVEL</h4>              
				<input type="radio" name="standard" id="입문" value="입문">입문
				<input type="radio" name="standard" id="중급" value="중급">중급 
				<input type="radio" name="standard" id="고급" value="고급">고급
            </div>                       
            <div class="join01">
                <button type="button" class="join-btn" onclick="insertProc()">회원가입</button>              
            </div>            
        </div>
        </form>
    </div>
    <!-- 입력된 경우에 따라서 다르게 액션되면 button으로, 입력 값 상관 없이 무조건 보내기면 submit -->
    <!-- type을 submit으로 하여 전송하기를 하지말고, script가서 함수를 만들고 전송하기를 함 
    button onclick으로 함수를 불러옴 함수안에 문제가 있는 경우 return false;-->   
       
<script type="text/javascript">
var isInsert = "${isInsert}"
	if(isInsert=="Y"){
		if(!confirm("회원가입 하시겠습니까?")){ //// 취소 입력시 조회화면 이동..
			location.href="${path}/joinForm.do"
		}
	}
function insertProc() {
	if(confirm("회원가입 하시겠습니까?")){
		var emailVal = $("[name=email]").val();		
		if(	emailVal == ""){
			alert("이메일을 입력하세요");
			$("[name=email]").focus();
			return; // 프로세스를 중단 처리
		}		
		var idVal = $("[name=id]").val();		
		if(	idVal == ""){
			alert("아이디를 입력하세요");
			$("[name=id]").focus();
			return; // 프로세스를 중단 처리
		}
		var passVal = $("[name=pass]").val();		
		if(	passVal == ""){
			alert("비밀번호를 입력하세요");
			$("[name=pass]").focus();
			return; // 프로세스를 중단 처리
			
		}	
		var nickVal = $("[name=nick]").val();		
		if(	nickVal == ""){
			alert("이름을 입력하세요");
			$("[name=id]").focus();
			return; // 프로세스를 중단 처리
		}			
		document.querySelector("form").submit();
	}	
}
</script>

</body>
</html>