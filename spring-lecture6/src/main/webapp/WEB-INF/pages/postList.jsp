
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
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>kPU-중고</title>

  <!-- Bootstrap Core CSS -->
  <link href="resource/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- MetisMenu CSS -->


  <!-- Timeline CSS -->
  <link href="resource/dist/css/timeline.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="resource/dist/css/sb-admin-2.css" rel="stylesheet">





  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body>

<div id="wrapper">

  <!-- Navigation -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">KPU-중고</a>
    </div>
    <!-- /.navbar-header -->


    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
      <div class="sidebar-nav navbar-collapse">
        <ul>

          <li>
            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>

            <!-- /.nav-second-level -->
          </li>
          <li>
            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>

            <!-- /.nav-second-level -->
          </li>
        </ul>
      </div>
      <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
  </nav>

  <div id="page-wrapper">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header"></h1>
      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-3">
                <i class="fa fa-comments fa-5x"></i>
              </div>
              <div class="col-xs-9 text-right">
                <div class="huge">
                  <span class="glyphicon glyphicon-book" aria-hidden="true"></span></div>
                <div>도서</div>
              </div>
            </div>
          </div>
          <a href="/postCategory?itemCategory=<%=URLEncoder.encode("도서", "utf-8")%>">
            <div class="panel-footer">
              <span class="pull-left">View Details</span>
              <span class="pull-right"><i class="glyphicon glyphicon-folder-open"></i></span>
              <div class="clearfix"></div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-3">
                <i class="fa fa-tasks fa-5x"></i>
              </div>
              <div class="col-xs-9 text-right">
                <div class="huge"> <span class="glyphicon glyphicon-phone" aria-hidden="true"></span></div>
                <div> 전자제품</div>
              </div>
            </div>
          </div>
          <a href="/postCategory?itemCategory=<%=URLEncoder.encode("전자제품", "utf-8")%>">
            <div class="panel-footer">
              <span class="pull-left">View Details</span>
              <span class="pull-right"><i class="glyphicon glyphicon-camera"></i></span>
              <div class="clearfix"></div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-3">
                <i class="fa fa-shopping-cart fa-5x"></i>
              </div>
              <div class="col-xs-9 text-right">
                <div class="huge"><span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span></div>
                <div>의류 </div>
              </div>
            </div>
          </div>
          <a href="/postCategory?itemCategory=<%=URLEncoder.encode("의류패션", "utf-8")%>">
            <div class="panel-footer">
              <span class="pull-left">View Details</span>
              <span class="pull-right"><i class="glyphicon glyphicon-user"></i></span>
              <div class="clearfix"></div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-3">
                <i class="fa fa-support fa-5x"></i>
              </div>
              <div class="col-xs-9 text-right">
                <div class="huge"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></div>
                <div>가구</div>
              </div>
            </div>
          </div>
          <a href="/postCategory?itemCategory=<%=URLEncoder.encode("가구", "utf-8")%>" >
            <div class="panel-footer">
              <span class="pull-left">View Details</span>
              <span class="pull-right"><i class="glyphicon glyphicon-bed"></i></span>
              <div class="clearfix"></div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <i class="fa fa-bar-chart-o fa-fw"></i> 전체 게시글

          </div>
          <!-- /.panel-heading -->
          <div class="panel-body">
            <div id="morris-area-chart">

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
          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->

        <!-- /.panel -->

        <!-- /.panel -->
      </div>
      <!-- /.col-lg-8 -->

      <!-- /.col-lg-4 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->

<script src="resource/js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resource/dist/js/sb-admin-2.js"></script>

</body>

</html>
