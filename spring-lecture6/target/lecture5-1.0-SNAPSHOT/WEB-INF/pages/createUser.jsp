<%--
  Created by IntelliJ IDEA.
  User: WJ.Kim
  Date: 2015-06-18
  Time: 오후 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
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
      var userNum1 = document.insertUser.userFirstNum.value;
      var userNum2 = document.insertUser.userSecondNum.value;
      var mainAddress = document.insertUser.mainAddress.value;
      var subAddress = document.insertUser.subAddress.value;
      var mobile1 = document.insertUser.mobile1.selectedIndex;
      var mobile2 = document.insertUser.mobile2.value;
      var mobile3 = document.insertUser.mobile3.value;

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
      } else if (!userNum1 || !userNum2) {
        alert("주민등록번호를 입력해주세요");
      } else if (!mainAddress || !subAddress) {
        alert("주소를 입력해주세요");
      } else if (!mobile1 || !mobile2 || !mobile3) {
        alert("휴대폰 번호를 입력해주세요");
      } else {
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
</head>
<body>
<form name="insertUser" method="post" action="/userInsert">
  <table id="table_form">
    <tr>
      <th colspan="2" align="center">아이디</th>
      <td width="474"><input type="text" name="userId" id="userId"
                             size="15" onBlur="id_Check()">&nbsp; <input
              type="button" name="Check" id="Check" value="중복확인"
              onClick="checkID()"> &nbsp; <input type="text"
                                                 name="idCheck" id="idCheck" size="30" style="border-width: 0px"
                                                 readonly="readonly"></td>
    </tr>
    <tr>
      <th colspan="2" align="center">비밀번호</th>
      <td><input type="password" name="pwd" id="pwd" size="15"></td>
    </tr>
    <tr>
      <th colspan="2" align="center">비밀번호 확인</th>
      <td><input type="password" name="pwdChk" id="pwdChk"
                 size="15" onBlur="pass_Check()">&nbsp;&nbsp; <input
              type="text" name="pwdCheck" id="pwdCheck" size="30"
              style="border-width: 0px" readonly></td>
    </tr>
    <tr>
      <th colspan="2" align="center">사용자 이름</th>
      <td><input type="text" name="userName" id="userName"></td>
    </tr>
    <tr>
      <th colspan="2" align="center">주민등록번호</th>
      <td><input type="text" name="userFirstNum" id="userFirstNum"
                 maxlength="6"> - <input type="password"
                                         name="userSecondNum" id="userSecondNum" maxlength="7"></td>
    </tr>
    <tr>
      <th colspan="2" align="center">e-mail</th>
      <td><input type="text" name="email1" id="email"> @ <select
              name="email2" id="email2">
        <option value="">선택해주세요.</option>
        <option value="naver.com">naver.com</option>
        <option value="hanmail.net">hanmail.net</option>
        <option value="gmail.com">gmail.com</option>
        <option value="kpu.ac.kr">kpu.ac.kr</option>
      </select></td>
    </tr>
    <tr>
      <th colspan="2" align="center">주소</th>
      <td><input type="text" name="mainAddress" id="mainAddress"
                 size="25"><br> <input type="text" name="subAddress"
                                       id="subAddress" size="55"></td>
    </tr>
    <tr>
      <th align="center" colspan="2">모바일</th>
      <td>
        </select><select name="mobile1">
        <option>선 택</option>
        <option value="010">010</option>
        <option value="011">011</option>
        <option value="016">016</option>
        <option value="017">017</option>
        <option value="018">018</option>
        <option value="019">019</option>
      </select> - <input type="text" name="mobile2" maxlength="4" size="3">
        - <input type="text" name="mobile3" maxlength="4" size="3">
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center"><input type="button" value="회원등록" onClick="insert_Clear()"></td>
    </tr>
  </table>
</form>
</body>
</html>
