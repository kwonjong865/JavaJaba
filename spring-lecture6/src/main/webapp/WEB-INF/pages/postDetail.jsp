<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: hwan
  Date: 2015-05-20
  Time: 오후 7:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>게시글</title>
  <style type="text/css">
    a {
      text-decoration: none
    }

    table {
      border: 3px solid #ABC668;
    }

    td {
      border-bottom-width: 3px;
      border-bottom-style: none;
      border-bottom-color: #ABC668;
    }

    body table tr td {
      border-bottom-width: 3px;
      border-bottom-style: none;
    }
  </style>
  <script type="text/javascript">
    function buy() {
      if (confirm("해당 상품에 대한 거래를 진행하시겠습니까?") == true) { //확인
        location.href("buy.jsp");
      } else { //취소
        return;
      }
    }
  </script>

</head>
<body>
<% Map post = (Map) request.getAttribute("postDetail");%>
<table width="800" border="1" cellspacing="0" cellpadding="5" align="center">
  <tr>
    <td>&nbsp;&nbsp;제&nbsp;&nbsp;&nbsp;&nbsp;목 : <%=post.get("title")%></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;분&nbsp;&nbsp;&nbsp;&nbsp;류 : <%=post.get("category")%></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;작성자 : <%=post.get("maker")%> &nbsp;&nbsp;전화번호 : <%=post.get("phone")%></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;물품명 : <%=post.get("itemname")%> &nbsp;&nbsp;가격 : <%=post.get("price")%>원
    </td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;등록일 : <%=post.get("makedate")%></td>
  </tr>
</table>

<table width="800" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr>
    <td align="center">
      <!-- 내용 스크롤링 -->
      <div style="width: 100%; height: 470px; overflow: auto">
        <!-- db에서 불러온 텍스트를 줄바꿈해주기 위해 replace -->
        <%
          String content = (String) post.get("content");
          content = content.replaceAll("\r\n","<br>"); //엔터 처리
          content = content.replaceAll("\u0020","&nbsp;"); //스페이스 처리
        %>
          <%=content%>
        <br><br>

        <%
          //이미지파일이 포함된 게시글인지 아닌지 판별
          String img = (String) post.get("imagefile");
          if(post.get("imagefile")==null) {

          }else if (img.length()>1) {
        %>
        <!--상대경로! 자신의 위치에서 경로 찾음!-->
        <img src="../resource/uploadFile/<%=post.get("imagefile")%>" width=600/>
        <%
          }
        %>

      </div>
    </td>
  </tr>
</table>
<table width="800" cellpadding="3" align="center">
  <tr align="right">
    <td>
      <%
        String id = (String) session.getAttribute("USERID"); //세션 짱짱맨!!
        //session.setAttribute("NUM", mainId);
        session.setAttribute("MAKER", post.get("maker"));
        session.setAttribute("ITEM", post.get("itemname"));
        session.setAttribute("PRICE", post.get("price"));
        session.setAttribute("SC", post.get("category"));

        if (true){//(id.equals(post.get("maker"))) { //현재 로그인 아이디와 게사자 아이디 비교 -> 같으면 수정,삭제버튼 생김
      %>
      <a href="/postModify?postId=<%=post.get("postid")%>">[수정]</a>
      &nbsp;&nbsp;
      <a href="/postDelete?postId=<%=post.get("postid")%>">[삭제]</a>
      <%
      } else {
      %> <a href="#" onClick="buy()">[구매]</a> <%
      }
    %> &nbsp;&nbsp; <a href="javascript:history.back(-1)">뒤로가기</a>
    </td>
  </tr>
</table>
<%
  String what = request.getSession().getServletContext().getRealPath("/");
  System.out.println("**********************************경로확인" + what);
%>
</body>
</html>
</head>
</html>
