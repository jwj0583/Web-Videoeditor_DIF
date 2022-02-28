<%@page import="kr.smhrd1.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/practice.js"></script>
</head>
<body>
<h2>회원가입</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
			<form class="form-inline" action="${cpath}/memberJoin.do" method="post">
			  <div class="form-group">
			    <label for="memId">아이디 :</label>
			    <input type="text" class="form-control" id="memId" name="memId" placeholder="아이디를 입력하세요">
			  </div>
			  <br>
			  <div class="form-group">
			    <label for="memPwd">패스워드 :</label>
			    <input type="password" class="form-control" id="memPw" name="memPw" placeholder="비밀번호를 입력하세요">
			  </div>
			  <br>
			  <div class="form-group">
			   <label for="memName">이름 :</label>
			  	<input type="text" class="form-control" id="memName" name="memName" placeholder="이름을 입력하세요">
			  	</div>
			  	<button type="submit" class="btn btn-default btn-sm">회원가입</button>
			</form>
	</div>
	</div>
</body>
</html>