<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <title>Pu-</title>
  <meta name="generator" content="Bootply" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
      <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand" rel="home" href="#">Pu-</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="i">pu-소개</a></li>
            <li><a href="#">pu-거래</a></li>
            <li><a href="#">pu-정보</a></li>
            
          </ul>
        </div>
      </nav>
      <div class="margin" >
        <div class="container-fluid"> 
          <div class="row">
            <div class="col-xs-12" >
              <img class ="img_index"src="resource/img/main_index.jpg" >
            </div>
          </div>
        </div>


        <div class="container-fluid">
          <div class="row" style="margin: 5% 0px ">
            <!--center-->
            <div class="col-sm-8">
              <div class="row">
                <div class="col-xs-10">
                  <h4>Pu-소개</h4>
                  <hr>      
                  <p>pu- 란 한국산업기술대학교(kpu)의 학생들이 거래,정보교환을 위한 사이트 입니다.  <br>
                    서적및 가전제품, 의류둥을 거래 할 수 있는 pu-거래와 정보 교환 및 학교생활에 대해 토론하는 pu-정보등으로 이루어져있습니다.
                  </p>
                </div>
              </div>
              <!-- 여기 에 추가-->     
            </div>
            <div class="col-sm-4">
              <h4></h4>
              
              <div class="panel panel-default">
                <div class="panel-heading">Login</div>
                <div class="panel-body">
                  <form class="form-horizontal" id="formlogin">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="id" placeholder="Email">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Pass</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="pass" placeholder="Password">
                      </div>
                    </div>
                    <div class="btn-index">
                      <input class="btn btn-primary" type="button" value="Join" onclick="Join()">
                      <input class="btn btn-primary" type="submit" value="Loign" Style="margin-left:15">
                    </div>
                  </form>


                  <form class="form-horizontal" id="formJoin" Style="display:none">
                    <div class="form-group">
                      <label class="col-sm-2 control-label">ID</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="Join_id" placeholder="Email">
                      </div>
                    </div>
                    <div class="form-group">
                      <label  class="col-sm-2 control-label">Pass</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="Join_pass" placeholder="Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">repeat</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="Join_repass" placeholder="re_Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">name</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="Join_name" placeholder="name">
                      </div>
                    </div>
                    <div class="btn-index">
                      <input class="btn btn-primary" type="button" value="back" onclick="Back()">
                      <input class="btn btn-primary" type="submit" value="Join" Style="margin-left:15">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

          <!--right-->
          <div class="col-xs-12">
            <div class="panel panel-default">
              <div class="panel-heading">copyright(c)2002 
                All rights reserved by Javajaba</div>
              </div>
              
            </div>

          </div><!--/container-fluid-->
        </div>
        <!-- script references -->

        <script language="JavaScript">


        function Join()
        {
          var loginform = document.getElementById("formlogin");


          loginform.style.display = "none";


          var joinform = document.getElementById("formJoin");


          joinform.style.display = "block";


        }
        function Back(){
          var loginform = document.getElementById("formlogin");


          loginform.style.display = "block";


          var joinform = document.getElementById("formJoin");


          joinform.style.display = "none";
        }
        </script>


      </body>
      </html>