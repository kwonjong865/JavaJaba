<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<%
  request.setCharacterEncoding("UTF-8");

  session.removeAttribute("id");
//username ���� ���� session�� ����
  response.sendRedirect("/index");
// �������� �������� �̵�
%>