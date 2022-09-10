<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<c:forEach var="r" items="${reviewList}">
	<div class="r_info">
		<span class="r">${r.name}(${r.id}) </span><span class="r">★ <fmt:formatNumber pattern="0.00">${r.stars}</fmt:formatNumber></span>
	</div>
	<div class="comment r">
		<p>${r.usercomment}</p>
	</div>
	<hr>
</c:forEach>
</body>
</html>