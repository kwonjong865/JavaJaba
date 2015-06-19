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
    <title>게시글 등록</title>
  <script language = "javascript"> // 자바 스크립트 시작
  function writeCheck()
  {
    var form = document.writeFrom;

    if( form.category.value=="선택" )   // form 에 있는 name 값이 없을 때
    {
      alert( "카테고리를 선택해 주세요!" ); // 경고창 띄움
      form.category.focus();   // form 에 있는 name 위치로 이동
      return;
    }

    if( !form.title.value )
    {
      alert( "제목을 입력해 주세요!" );
      form.title.focus();
      return;
    }

    if( !form.itemName.value )
    {
      alert( "물품 이름을 입력해 주세요!" );
      form.itemName.focus();
      return;
    }

    var number = /[^0-9]/; //숫자만 허용
    //공백검사 -> 숫자검사
    if( !form.price.value )
    {
      alert( "가격을 입력해 주세요!" );
      form.price.focus();
      return;
      //숫자만 입력 허용
    }else if(form.price.value.search(number)!=-1 || form.price.value.length == 0 ){
      alert("올바른 가격을 입력해 주세요!(숫자)");
      form.price.focus();
      return;
    }

    if( !form.phone.value )
    {
      alert( "연락처를 입력해 주세요!" );
      form.phone.focus();
      return;
    }

    if( !form.content.value )
    {
      alert( "내용을 입력해 주세요!" );
      form.content.focus();
      return;
    }

    if( !form.password.value )
    {
      alert( "비밀번호를 입력해 주세요!" );
      form.password.focus();
      return;
    }

    form.submit();
  }
  </script>

  <style type="text/css">
    table {
      border: 3px solid #ABC668;
    }
  </style>
</head>
<body>

  <form name="writeFrom" method="post" action = "/postInsert">
    <input type="hidden" name="maker" value="<%=session.getAttribute("id") %>">
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
          <input type="button" value="등록" OnClick="javascript:writeCheck();">
          <input type=button value="취소" OnClick="javascript:history.back(-1)">
        </th>
      </tr>
    </table>
  </form>
</body>
</html>
