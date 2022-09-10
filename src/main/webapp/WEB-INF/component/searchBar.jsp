<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form id="frm01" class="form-inline"  method="get" action="${path}/searchPost.do">
	<div style="display: flex;justify-content: center;margin: 20px">
		<input class="schBtn" name="title" placeholder="제목" 
		style="width: 400px; border: 1px solid black;"
		/>
		<button type="submit" style="background: black;color: white;font-weight: 500; font-size:16px;padding:4px">검색</button>
	</div>
</form>
</body>
</html>