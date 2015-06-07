<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>KPU-중고</title>

  <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="resource/css/bootstrap.min.css" type="text/css">

  <!-- Custom Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="resource/font-awesome/css/font-awesome.min.css" type="text/css">

  <!-- Plugin CSS -->
  <link rel="stylesheet" href="resource/css/animate.min.css" type="text/css">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="resource/css/creative.css" type="text/css">
</head>
<body>
<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand page-scroll" href="#page-top">KPU-Book</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

<header>
  <div class="header-content" style="top: 500px; font-size:70px;">
    필요하신 물건이 있으시면 <BR> PU-중고를 이용하십시오
    <div class="header-content-inner" style=" margin-right:0; margin-top:50px">

      <form class="form-horizontal" id = "formlogin"style="margin-left: 400px;">
        <div class="form-group" id="inputid">
          <div style="float:left">
            <label for="inputEmail3" style="font-size:30px; margin-right:57">Email</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
          </div>
        </div>
        <div class="form-group" id="inputpass">
          <div style="float:left">
            <label for="inputPassword3" style="font-size:30px;">Password</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
          </div>
        </div>
        <div class="form-group">
          <div class=" col-sm-7" id = "inputbutton">
            <button type="button" class="btn btn-default">Login</button>
            <button type="button" class="btn btn-default" onclick="Join()">Join</button>

          </div>
        </div>
      </form>

      <form class="form-horizontal" id = "formJoin"style="margin-left: 400px; display:none;">
        <div class="form-group" id="join-name">
          <div style="float:left;margin-right: 58px;">
            <label for="name" style="font-size:30px;">Name</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
          </div>
        </div>
        <div class="form-group" id="joinid">
          <div style="float:left">
            <label for="inputEmail3" style="font-size:30px; margin-right:57">Email</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
          </div>
        </div>
        <div class="form-group" id="joinpass">
          <div style="float:left">
            <label for="inputPassword3" style="font-size:30px;">Password</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="pass" class="form-control" id="inputPassword3" placeholder="Password">
          </div>
        </div>
        <div class="form-group" id="join-repass">
          <div style="float:left;margin-right: 30px;">
            <label for="repass" style="font-size:30px;">re-Pass</label>
          </div>
          <div class="col-sm-7" style="float:left">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
          </div>
        </div>

        <div class="form-group">
          <div class=" col-sm-7" id = "join-button">
            <button type="button" class="btn btn-default">Join</button>
            <button type="button" class="btn btn-default" onclick="Back()">back</button>

          </div>
        </div>
      </form>
    </div>
  </div>
</header>


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

</head>
<!-- jQuery -->
<script src="resource/js/jquery.js"/>

<!-- Bootstrap Core JavaScript -->
<script src="resource/js/bootstrap.min.js"/>

<!-- Plugin JavaScript -->
<script src="resource/js/jquery.easing.min.js"/>
<script src="resource/js/jquery.fittext.js"/>
<script src="resource/js/wow.min.js"/>

<!-- Custom Theme JavaScript -->
<script src="/resource/js/creative.js"/>
</body>
</html>
