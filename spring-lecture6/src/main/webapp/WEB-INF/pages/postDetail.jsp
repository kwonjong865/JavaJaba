<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Map" %>
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

    <style type="text/css">
        .layer {
            display: none;
            position: fixed;
            _position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 100;
        }

        .layer .bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000;
            opacity: .5;
            filter: alpha(opacity=50);
        }

        .layer .pop-layer {
            display: block;
        }

        .pop-layer {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            width: 50%;
            height: 80%;
            background-color: #fff;
            border: 5px solid white;
            z-index: 10;
        }

        .pop-layer .pop-container {
            padding: 20px 25px;
        }

        .pop-layer p.ctxt {
            color: #666;
            line-height: 25px;
        }

        .pop-layer .btn-r {
            width: 100%;
            margin: 10px 0 20px;
            padding-top: 10px;
            border-top: 1px solid #DDD;
            text-align: right;
        }

        a.cbtn {
            display: inline-block;
            height: 25px;
            padding: 0 14px 0;
            border: 1px solid #304a8a;
            background-color: #3f5a9d;
            font-size: 13px;
            color: #fff;
            line-height: 25px;
        }

        a.cbtn:hover {
            border: 1px solid #091940;
            background-color: #1f326a;
            color: #fff;
        }

        table {
            border: white solid;
        }
        #border-radius
        {
            -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border: 1px solid gray;
        width: 400px;
            height: 70px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" rel="home" href="/postList">Pu-</a>
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
        ${name}
        <hr>

    </div>
</div>
<!--/left-->

<div class="main_table">
    <!--center-->
    <div class="col-sm-8">
        <div class="row" style="margin-top:5%;">
            <div class="col-xs-12" style="border:1px solid silver;">
                <% Map post = (Map) request.getAttribute("postDetail");%>
                <table width="100%" border="1" cellspacing="0" cellpadding="5" class="table table-hover"
                       align="center">
                    <tr>
                        <td style="text-align: left;"><%=post.get("title")%>
                        </td>

                        <td style="text-align: right;font-size: 12px;vertical-align: bottom;">
                            <%=post.get("category")%> | <%=post.get("makedate")%>
                        </td>
                    </tr>
                    <tr>
                        <td  style="text-align: left" colspan="1">작성자 : <%=post.get("maker")%></td>
                        <td style="text-align: right;font-size: 12px;vertical-align: bottom;">
                            tel : <%=post.get("phone")%>
                        </td>

                    </tr>
                    <tr>
                        <td style="text-align: left">물품명 : <%=post.get("itemname")%> </td>
                        <td style="text-align: right">
                            &#8361;  <%=post.get("price")%>
                        </td>
                    </tr>

                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="5"
                        class="table table-hover">
                    <tr>
                        <td align="center">
                            <br>
                            <div style="width: 100%; height: 100%; min-height: 300px; overflow: auto">
                                <!-- 내용 스크롤링 -->
                                <!-- db에서 불러온 텍스트를 줄바꿈해주기 위해 replasceAll -->
                                <%=post.get("content")%><br>
                                <%
                                    if (post.get("imagefile") != null) {
                                %>
                                <!--상대경로! 자신의 위치에서 경로 찾음!-->
                                <img src="../target/lecture5-1.0-SNAPSHOT/resource/uploadFile/<%=post.get("imagefile")%>" width="100%" />
                                <%
                                    }
                                %>

                            </div>
                        </td>
                    </tr>
                </table>
                <table width="100%" cellpadding="3" align="center">
                    <tr align="right">
                        <td>
                            <%
                                String id = (String) session.getAttribute("id"); //세션 짱짱맨!!

                                session.setAttribute("MAKER", post.get("maker"));
                                session.setAttribute("ITEM", post.get("itemname"));
                                session.setAttribute("PRICE", post.get("price"));
                                session.setAttribute("SC", post.get("category"));

                                if (post.get("maker").equals(id)) {
                            %>
                            <!--/postModify?postId=<%=post.get("postid")%> -->

                            <a href="/postModify?postId=<%=post.get("postid")%>" class="btn btn-link">수정</a>

                            <a href="/postDelete?postId=<%=post.get("postid")%>"  class="btn btn-link">삭제</a>
                            <%
                            } else {
                            %> <a href="#" onClick="buy()"  class="btn btn-link">구매</a> <%
                            }
                        %> <a
                                href="javascript:history.back(-1)"  class="btn btn-link">뒤로가기</a>
                        </td>
                    </tr>
                </table>

            </div>

        </div>

        <hr>

    </div>
    <!--/center-->
</div>
<!--right-->

<!-- popup-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>