
<%--
  Created by IntelliJ IDEA.
  User: hwan
  Date: 2015-05-20
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");%>
  <html>
<head>
    <title>게시판</title>
  <link href="../resource/css/postDesign.css" rel="stylesheet" type="text/css">
  <script type="text/javascript">
    function MM_swapImgRestore() { //v3.0
      var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
    }
    function MM_preloadImages() { //v3.0
      var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
        var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
          if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
    }

    function MM_findObj(n, d) { //v4.01
      var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
        d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
      if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
      for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
      if(!x && d.getElementById) x=d.getElementById(n); return x;
    }

    function MM_swapImage() { //v3.0
      var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
        if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
    }
  </script>
</head>
<body onLoad="MM_preloadImages('../resource/image/전체.png','../resource/image/전자제품.png','../resource/image/스포츠.png','../resource/image/의류패션.png','../resource/image/도서.png','../resource/image/가구.png','../resource/image/기타.png')">

<div id="table_wrap">
  <div id="category_box">
    <div class="category"><a href="/postList" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','../resource/image/전체.png',1)"><img src="../resource/image/all.png" width="80" height="50" id="Image1"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("전자제품", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','../resource/image/전자제품.png',2)"><img src="../resource/image/elect.png" width="80" height="50" id="Image2"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("스포츠", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','../resource/image/스포츠.png',3)"><img src="../resource/image/sports.png" width="80" height="50" id="Image3"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("의류패션", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','../resource/image/의류패션.png',4)"><img src="../resource/image/fashion.png" width="80" height="50" id="Image4"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("도서", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','../resource/image/도서.png',5)"><img src="../resource/image/book.png" width="80" height="50" id="Image5"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("가구", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','../resource/image/가구.png',6)"><img src="../resource/image/furniture.png" width="80" height="50" id="Image6"></a></div>
    <div class="category"><a href="/postCategory?itemCategory=<%=URLEncoder.encode("기타", "utf-8")%>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image7','','../resource/image/기타.png',7)"><img src="../resource/image/etc.png" width="80" height="50" id="Image7"></a></div>
  </div>
  <table width="980" border="0"  cellspacing="0">
  <tr>
    <th width="10%" scope="col">번호</th>
    <th width="15%" scope="col">분류</th>
    <th width="15%" scope="col">작성자</th>
    <th width="40%" scope="col">제목</th>
    <th width="20%" scope="col">등록일</th>
  </tr>
    </table>
    <div style="width: 1000px; height: 300px; overflow: auto">
      <table width="980" border="0"  cellspacing="0">
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

  </div>

</td>
<table width="980" border="0" cellspacing="0">
    <tr>
    <td width=30%></td>
    <td align="center" WIDTH="40%">
    <form action="/postSearchController" method="post" accept-charset="utf-8">
    <select name="select">
      <option value="title">제목</option>
      <option value="content">내용</option>
      <option value="itemname">물품명</option>
    </select>
    <input type="text" size="20" maxlength="30" name="keyword" />
    <input type="submit" value="검색" />
  </form>
    </td>
    <td align="right" WIDTH="30%"><a href="/postForm">글쓰기&nbsp;&nbsp;</a></td>
  </tr>
</table>

</body>
</html>
