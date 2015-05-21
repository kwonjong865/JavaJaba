<%--
  Created by IntelliJ IDEA.
  User: hwan
  Date: 2015-05-20
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <title>게시판</title>
</head>
<body>

  <table width="980" border="1"  cellspacing="0">
  <tr>
    <th width="10%" scope="col">번호</th>
    <th width="15%" scope="col">분류</th>
    <th width="15%" scope="col">작성자</th>
    <th width="40%" scope="col">제목</th>
    <th width="20%" scope="col">등록일</th>
  </tr>
    </table>
    <div style="width: 1000px; height: 300px; overflow: auto">
      <table width="980" border="1"  cellspacing="0">
<c:forEach var="post" items="${postList}" varStatus="status">
  <tr>
    <td  width="10%" align="center">${post.postid}</td>
    <td  width="15%" align="center">${post.category}</td>
    <td  width="15%" align="center">${post.maker}</td>
    <td  width="40%">
      <a href="/postDetail?postId=${post.postid}">${post.title}</a>
    </td>
    <td  width="20%" align="center">${post.makedate}</td>
  </tr>
</c:forEach>
</table>
  </div>
<a href="/postForm">글쓰기</a>

</body>
</html>
