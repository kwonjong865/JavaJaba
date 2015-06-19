<%--
  Created by IntelliJ IDEA.
  User: WJ.Kim
  Date: 2015-06-18
  Time: 오후 5:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  <form action="userLogin" method="post">
    아이디 : <input type = "text" name="userId"><br>
    비밀번호 : <input type = "password" name="pwd"><br>
    <a href="createUser">회원가입</a>&nbsp;&nbsp;
    <input type = "submit" value="login">
  </form>
</body>
</html>
