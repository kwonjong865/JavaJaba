<%--
  Created by IntelliJ IDEA.
  User: hwan
  Date: 2015-05-20
  Time: 오후 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title></title>

  <style type="text/css">
    table {
      border: 3px solid #ABC668;
    }
  </style>
</head>
<body>

  <form name="writeFrom" method="post" action = "/postInsert" accept-charset="utf-8">
    <table width="514" border="1" align="center" cellspacing="0" cellpadding="3">
      <tr>
        <th scope="row" height="10%">물품범주</th>
        <td><label for="select"></label>
          <select name="category" size="1" id="select">
            <option selected="selected">선택</option>
            <option value="전자제품">전자제품</option>
            <option value="스포츠">스포츠</option>
            <option value="의류패션">의류패션</option>
            <option value="도서">도서</option>
            <option value="가구">가구</option>
            <option value="기타">기타</option>
          </select></td>
      </tr>
      <tr>
        <th scope="row" height="10%">제목</th>
        <td><input name="title" type="text"  maxlength="23" size="50">
          <input type="hidden" name="maker" value="<%=session.getAttribute("USERID") %>">
        </td>
      </tr>
      <tr>
        <th scope="row" height="10%">물품이름</th>
        <td><input type="text" name="itemName" maxlength="10"></td>
      </tr>
      <tr>
        <th scope="row" height="10%">물품가격</th>
        <td><input type="text" name="price" maxlength="10">원</td>
      </tr>
      <tr>
        <th scope="row" height="10%">연락처</th>
        <td><input type="text" name="phone" maxlength="20"></td>
      </tr>
      <tr>
        <th scope="row">물품소개</th>
        <td><textarea name="content" cols="45" rows="10"></textarea></td>
      </tr>
      <tr>
        <th scope="row" height="10%">비밀번호</th>
        <td><input type="password" name="password" maxlength="5"></td>
      </tr>
      <tr>
        <th scope="row" height="10%">물품사진</th>
        <td>

          <input type="file" name="imageFile" size=40>

        </td>
      </tr>
      <tr>
        <th colspan="2" scope="row">
          <input type ="submit" value="등록">
        </th>
      </tr>
    </table>
  </form>
</body>
</html>
