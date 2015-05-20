<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>헬로 월드</title></head>
<body>

<table border="1">
	<tr>
		<td>First Name</td>
		<td>Last Name</td>
	</tr>
	<c:forEach var="actor" items="${actors}" varStatus="status">
		<tr>
			<td>${actor.first_name}</td>
			<td>${actor.last_name}</td>
			<td><a href="/modifyController?id=${actor.actor_id}">수정</a></td>
		</tr>
	</c:forEach>
</table>

<form method = "get" action = "/InsertController">
	<input type="text" name="fn">
	<input type="text" name="ln">
	<input type ="submit" value="등록">

</body>
</html>