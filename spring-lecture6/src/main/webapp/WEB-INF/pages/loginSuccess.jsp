<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: WJ.Kim
  Date: 2015-06-18
  Time: 오후 7:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:set var="USERNAME" value="${name}" scope="session"/>
로그인 성공<br>
  아이디 : ${userId}<br>
  비밀번호 : ${pwd}<br>
<%= session.getAttribute("USERNAME") %>
</body>
</html>
