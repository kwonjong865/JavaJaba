<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>PU-</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="css/styles.css" rel="stylesheet">
    <style type="text/css">
        .layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
        .layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
        .layer .pop-layer {display:block;}

        .pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 50%; height:80%;  background-color:#fff; border: 5px solid white; z-index: 10;}
        .pop-layer .pop-container {padding: 20px 25px;}
        .pop-layer p.ctxt {color: #666; line-height: 25px;}
        .pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}

        a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}
        a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}

        table{
            border: white solid;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" rel="home" href="#">Pu-</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">


        </ul>
    </div>
</nav>
<!--left-->
<div class="sid_bar">

    <div class="side_bar">
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
        ${name}  <a href="sessionremove" class="btn btn-Link" >로그아웃</a>
        <hr>


    </div>
</div>
<!--/left-->

<div class="main_table">
    <!--center-->
    <div class="col-sm-8">

        <div class="row" style="margin-top:5%;margin-left: 3%">
            <button type="button" class="btn btn-primary"
                    onclick="location.href='/postCategory?itemCategory=<%=URLEncoder.encode("도서","utf-8")%>' "><span
                    class="
            glyphicon glyphicon-book" aria-hidden="true"></span>도서
            </button>
            <button type="button" class="btn btn-success"
                    onclick="location.href='/postCategory?itemCategory=<%=URLEncoder.encode("전자제품","utf-8")%>' "><span
                    class="glyphicon glyphicon-camera" aria-hidden="true"></span>전자제품
            </button>
            <button type="button" class="btn btn-warning" style="height: 34px;
            " onclick="location.href='/postCategory?itemCategory=<%=URLEncoder.encode("의류","utf-8")%>' "><span
                    class="glyphicon glyphicon-shopping-cart" aria-hidden="true">의류</button>
            <button type="button" class="btn btn-danger" style="
            height: 34px;"
                    onclick="location.href='/postCategory?itemCategory=<%=URLEncoder.encode("가구","utf-8")%>' "><span
                    class="
            glyphicon glyphicon-home" aria-hidden="true">가구</button>
        </div>
        <div class="row" style="margin-top:5%;">
            <div class="col-xs-12">
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <th width="10%" scope="col">번호</th>
                        <th width="15%" scope="col">분류</th>
                        <th width="15%" scope="col">작성자</th>
                        <th width="40%" scope="col">제목</th>
                        <th width="20%" scope="col">등록일</th>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0">
                    <c:forEach var="post" items="${postList}" varStatus="status">
                        <tr>
                            <td width="10%" align="center">${post.postid}</td>
                            <td width="15%" align="center">${post.category}</td>
                            <td width="15%" align="center">${post.maker}</td>
                            <td width="40%">
                                <a href="/postDetail?postId=${post.postid}">${post.title}</a>
                            </td>
                            <td width="20%" align="center">${post.makedate}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="5" style="text-align: right">
                            <button type="button" class="btn btn-primary"   onclick="layer_open('layer2');return false;">글 등록</button>
                        </td>
                    </tr>
                </table>
                <form action="/postSearchController" method="post" accept-charset="utf-8">
                    <select name="select">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="itemname">물품명</option>
                    </select>
                    <input type="text"  maxlength="30" name="keyword" />
                    <input type="submit" value="검색" />
                </form>
            </div>

        </div>

        <hr>

    </div>
    <!--/center-->
</div>
<!--right-->

<!-- popup-->
<div class="layer">
    <div class="bg"></div>
    <div id="layer2" class="pop-layer">
        <div class="pop-container">
            <div class="pop-conts">
                <form name="writeFrom" method="post" action = "/postInsert">
                    <input type="hidden" name="maker" value="<%=session.getAttribute("USERID") %>">
                    <table width="100%" border="1" align="center" cellspacing="0" cellpadding="3">
                        <tr>
                            <th scope="row" height="10%" class="col-sm-2 control-label">물품범주</th>
                            <td><label for="select"></label>
                                <select name="category"  id="select" class="form-control">
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
                            <td>
                                <input name="title" type="text" class="form-control" PLACEHOLDER="글 제목을 입력해주세요" >
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" height="10%">물품이름</th>
                            <td><input type="text" name="itemName"  class="form-control" maxlength="10" PLACEHOLDER="물품 이름을 입력해주세요"></td>
                        </tr>
                        <tr>
                            <th scope="row" height="10%">물품가격</th>
                            <td><input type="text" name="price"   class="form-control"maxlength="10" PLACEHOLDER="가격을 입력해주세요"></td>
                        </tr>
                        <tr>
                            <th scope="row" height="10%">연락처</th>
                            <td><input type="text" name="phone" class="form-control" maxlength="20" PLACEHOLDER="연락처를 입력해주세요"></td>
                        </tr>
                        <tr>
                            <th scope="row">물품소개</th>
                            <td><textarea name="content" cols="45"  class="form-control"rows="10.
                            "></textarea></td>
                        </tr>
                        <tr>
                            <th scope="row" height="10%">비밀번호</th>
                            <td><input type="password" name="password" class="form-control" maxlength="5"></td>
                        </tr>
                        <tr>
                            <th scope="row" height="10%">물품사진</th>
                            <td>
                                <input type="file" name="imageFile" size=40>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2" scope="row">
                                <input type="button" value="등록" class="btn btn-primary" OnClick="javascript:writeCheck();">
                                <a  href="#" class="btn btn-primary" >취소</a>
                            </th>
                        </tr>
                    </table>
                </form>
                <!--// content-->
            </div>
        </div>
    </div>
</div>

<!--/container-fluid-->
<script type="text/javascript">
    function layer_open(el){

        var temp = $('#' + el);
        var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수

        if(bg){
            $('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다.
        }else{
            temp.fadeIn();
        }

        // 화면의 중앙에 레이어를 띄운다.
        if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
        else temp.css('top', '0px');
        if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
        else temp.css('left', '0px');

        temp.find('a.btn').click(function(e){
            if(bg){
                $('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다.
            }else{
                temp.fadeOut();
            }
            e.preventDefault();
        });

        $('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
            $('.layer').fadeOut();
            e.preventDefault();
        });

    }
</script>
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
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>