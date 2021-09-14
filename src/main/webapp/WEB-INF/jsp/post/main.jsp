<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 메인페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<div class="d-flex mt-2">
			<h1 class="text-info font-weight-bold">KJW Health</h1>
			<div class="input-group mb-3 w-50 mt-2 ml-5">
				<input type="text" class="form-control">
				<div class="input-group-append">
					<span class="input-group-text" id="basic-addon2">검색</span>
				</div>
			</div>
			<h2 class="ml-5 mt-2">2021-09-14</h2>
		</div>
		<nav class="mt-3">
	        <ul class="nav nav-fill">
	            <li class="nav-item"><a class="nav-link" href="#">진단하기</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">건강용품/식품</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">건강 정보 공유</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">나의 건강 기록</a></li>
	        </ul>
        </nav>
        <section>
	       	<div class="d-flex justify-content-between">
		       	<h1 class="mt-3 font-weight-bold">건강용품/식품</h1>
	        	<div class="mainLogin-box w-25 form-control mt-3 mr-5">
			       	<div class="d-flex justify-content-between mt-2">
			       		<small class="text-secondary mt-1">KJW Health에 오신걸 환영합니다!</small>
			       		<a href="/user/signup_view"><small class="text-secondary">회원가입</small></a>
			       	</div>
			       	<a href="/user/signin_view" class="btn btn-primary w-100 mt-3">로그인</a>
		       	</div>
	       	</div>
        </section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>