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
              서적및 가전제품, 의류둥을 거래 할 수 있는 pu-거래등으로 이루어져있습니다.
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
            <form class="form-horizontal" action="userLogin" id="formlogin" method="post">
              <div class="form-group">
                <label class="col-sm-2 control-label">ID</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="id" name="userId" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label">Pass</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="pwd" placeholder="Password">
                </div>
              </div>
              <div class="btn-index">
                <input class="btn btn-primary" type="button" value="Join" onclick="Join()">
                <input class="btn btn-primary" type = "submit" value="login">
              </div>
            </form>


            <form class="form-horizontal" id="formJoin"  name="insertUser" method="post"  Style="display:none"  action="/userInsert">
              <div class="form-group">
                <label class="col-sm-2 control-label">ID</label>
                <div class="col-sm-10">
                  <input type="text" name="userId" id="userId"  class="form-control"
                         size="15" onBlur="id_Check()">&nbsp; <input
                        type="button" name="Check" id="Check" value="중복확인"
                        onClick="checkID()"> &nbsp; <input type="text"
                                                           name="idCheck" id="idCheck" size="30" style="border-width: 0px"
                                                           readonly="readonly">
                </div>
              </div>
              <div class="form-group">
                <label  class="col-sm-2 control-label">Pass</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control"  name="pwd" id="pwd" size="15">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label">repeat</label>
                <div class="col-sm-10"><input type="password"  class="form-control"  name="pwdChk" id="pwdChk"
                                              size="15" onBlur="pass_Check()">&nbsp;&nbsp; <input
                        type="text" name="pwdCheck" id="pwdCheck" size="30"
                        style="border-width: 0px" readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label">name</label>
                <div class="col-sm-10">
                  <input type="text"  class="form-control"  name="userName" id="userName">
                </div>
              </div>
              <div class="btn-index">
                <input class="btn btn-primary" type="button" value="back" onclick="Back()">
                <input class="btn btn-primary" type="button" value="Join" onClick="insert_Clear()">
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
<script type="text/javascript">
  function id_Check() {
    var id = document.insertUser.userId.value;
    var idCheck1 = document.insertUser.userId.value.length >= 7;
    var idCheck2 = document.insertUser.userId.value.length <= 12;
    var checkId = /^[a-zA-Z0-9]*$/;

    if (!id) {
      document.insertUser.idCheck.value = "아이디를 입력해주세요.";
    } else if (!idCheck1 || !idCheck2) {
      document.insertUser.idCheck.value = "아이디는 7자 이상 12자 이하여야 합니다.";
    } else if (!checkId.test(id)) {
      document.insertUser.idCheck.value = "아이디는 영어와 숫자 조합이여야 합니다.";
    } else {
      document.insertUser.idCheck.value = "";
    }
    return;
  }

  function pass_Check() {
    var pwd1 = document.insertUser.pwd.value;
    var pwd2 = document.insertUser.pwdChk.value;
    var pwdCheck1 = document.insertUser.pwd.value.length >= 7;
    var pwdCheck2 = document.insertUser.pwd.value.length <= 12;

    if (pwd1 != pwd2) {
      document.insertUser.pwdCheck.value = "비밀번호가 일치하지 않습니다.";
    } else if (!pwdCheck1 || !pwdCheck2) {
      document.insertUser.pwdCheck.value = "비밀번호는  7자 이상 12자 이하여야 합니다.";
    } else {
      document.insertUser.pwdCheck.value = "";
    }
    return;
  }

  function insert_Clear() {
    var userId = document.insertUser.userId.value;
    var id_Check1 = document.insertUser.userId.value.length >= 7;
    var id_Check2 = document.insertUser.userId.value.length <= 12;
    var check_Id = /^[a-zA-Z0-9]*$/;
    var pwd = document.insertUser.pwd.value;
    var userName = document.insertUser.userName.value;

    if (!userId) {
      alert("아이디를 입력해주세요");
    }else if(!id_Check1 || !id_Check2){
      alert("아이디는 7자 이상 12자 이하여야 합니다.");
    }else if(!check_Id.test(userId)){
      alert("아이디는 영문과 숫자 조합이여야 합니다.");
    }else if (!pwd) {
      alert("비밀번호를 입력해주세요");
    } else if (!userName) {
      alert("사용자 이름을 입력해주세요");
    }  else {
      document.insertUser.submit();
    }

  }

  function checkID(){
    var id = document.insertUser.userId.value;
    if(id.length<=6 || id.length>=13){
      alert("아이디를 정확히 입력해주세요");
    }else{
      var url = "/checkId?userId=" + id;
      window.open(url, "get","height = 240, width = 320, resizable=no, location=no, resizable=no");
    }
  }
</script>

</body>
</html>