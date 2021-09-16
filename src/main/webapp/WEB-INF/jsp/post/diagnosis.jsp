<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 진단하기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="d-flex justify-content-center">
			<div class="w-50">
				<div class="d-flex justify-content-between align-items-center">
					<h1 class="font-weight-bold">진단하기</h1>
					<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
				</div>
				<div class="input-group input-group-lg mt-5">
				    <div class="input-group-prepend">
				    	<span class="input-group-text">나이</span>
				    </div>
				    <input type="text" class="form-control" id="age">
				</div>
				
				<div class="input-group input-group-lg mt-5">
				    <div class="input-group-prepend">
				    	<span class="input-group-text">키</span>
				    </div>
				    <input type="text" class="form-control" id="height">
				</div>
				
				<div class="input-group input-group-lg mt-5">
				    <div class="input-group-prepend">
				    	<span class="input-group-text">몸무게</span>
				    </div>
				    <input type="text" class="form-control" id="weight">
				</div>
				
				<div class="text-right">
					<button type="button" class="btn btn-primary mt-3">입력하기</button>
				</div>
			</div>
			
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="bmi-box w-50 mt-3 form-control">
				<h1 class="font-weight-bold mt-4">당신의 BMI 지수는?</h1>
				<h1 class="text-danger text-right mt-5">32 위험합니다!</h1>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<div class="w-50 mt-3">
				<h1 class="font-weight-bold mt-4 mb-3">자가진단</h1>
				<div class="d-flex justify-content-between align-items-center">
					<h4>설문1</h4>
					<input type="checkbox">
				</div>
				<div class="d-flex justify-content-between align-items-center">
					<h4>설문2</h4>
					<input type="checkbox">
				</div>
				<div class="d-flex justify-content-between align-items-center">
					<h4>설문3</h4>
					<input type="checkbox">
				</div>
				<div class="d-flex justify-content-between align-items-center">
					<h4>설문4</h4>
					<input type="checkbox">
				</div>
				<div class="d-flex justify-content-between align-items-center">
					<h4>설문5</h4>
					<input type="checkbox">
				</div>
				
				<div class="text-right">
					<a href="/post/diagnosis_result" class="btn btn-primary mt-3">진단하기</a>
				</div>
			</div>
		</div>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>