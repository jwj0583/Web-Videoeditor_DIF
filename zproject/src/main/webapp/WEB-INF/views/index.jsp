<%@page import="kr.smhrd1.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/practice.js"></script>
  <script type="text/javascript">
	$(document).ready(()=>{ 
  		
  	});
  </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>dobby is free</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
	    <c:if test="${empty mvo}">
			<form class="form-inline" action="${cpath}/login.do" method="post">
			  <div class="form-group">
			    <label for="memId">아이디 :</label>
			    <input type="text" class="form-control" id="memId" name="memId">
			  </div>
			  <div class="form-group">
			    <label for="memPwd">패스워드 :</label>
			    <input type="password" class="form-control" id="memPw" name="memPw">
			  </div>
			  <button type="submit" class="btn btn-default btn-sm">로그인</button>
			</form>
		</c:if>
		<c:if test="${!empty mvo}">
			<div class="form-group">
				<label for="">${mvo.memName}님 환영합니다.</label>
				<button type="button" class="btn btn-default btn-sm" onclick="outFn()">로그아웃</button>
			</div>
		</c:if>
			<div>
				<button type="button" class="btn btn-default btn-sm" onclick="location.href='/dif/joinUs.do'">회원가입</button>
			</div>
	</div>
	</div>
</body>
</html>