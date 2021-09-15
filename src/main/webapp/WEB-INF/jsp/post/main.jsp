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
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<!-- Search Bar -->
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
		
		<!-- 메뉴리스트 -->
		<nav class="mt-2">
	        <ul class="nav nav-fill">
	            <li class="nav-item"><a class="nav-link" href="#">진단하기</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">건강용품/식품</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">건강 정보 공유</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">나의 건강 기록</a></li>
	        </ul>
        </nav>
        
        <section>
        	<div class="d-flex">
	        	<div class="col-8">
	        	
	        		<!-- 건강용품/식품 -->
	        		<div class="d-flex justify-content-between align-items-center">
		        		<h1 class="font-weight-bold mt-3">건강용품/식품</h1>
		        		<a href="#" class="font-weight-bold mt-2">전체보기</a>
	        		</div>
	        		
	        		<div class="d-flex justify-content-between align-items-center flex-wrap">
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478__340.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">건강용품/식품 : 이름</h5>
		        		</div>
	        		</div>
	        		
	        		<!-- 식단 레시피 -->
	        		<div class="d-flex justify-content-between align-items-center">
		        		<h1 class="font-weight-bold mt-3">식단 레시피</h1>
		        		<a href="#" class="font-weight-bold mt-2">전체보기</a>
	        		</div>
	        		
	        		<div class="d-flex justify-content-between align-items-center flex-wrap">
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
		        		<div>
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
		        		<div class="mt-3">
		        			<img src="https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg" width="200px">
		        			<h5 class="mt-1 font-weight-bold">식단 레시피 : 이름</h5>
		        		</div>
	        		</div>
	        	</div>
	        	
	        	<div class="col-4">
	        	
	        		<!-- 로그인박스 -->
	        		<c:if test="${empty userName }">
			        	<div class="mainLogin-box form-control mt-3 mr-5">
					       	<div class="d-flex justify-content-between mt-2">
					       		<small class="text-secondary">KJW Health에 오신걸 환영합니다!</small>
					       	</div>
					       	<a href="/user/signin_view" class="btn btn-primary w-100 mt-2">로그인</a>
					       	<a href="/user/signup_view"><small class="text-secondary float-right mt-2"><i class="bi bi-person mr-1"></i>회원가입</small></a>
				       	</div>
			       	</c:if>
			       	
			       	<c:if test="${not empty userName }">
			        	<div class="mainLogin-box form-control mt-3 mr-5">
					       	<div class="d-flex justify-content-between mt-2">
					       		<div class="display-5 font-weight-bold mt-1">${userName }님 환영합니다!!</div>
					       	</div>
					       	<a href="#" class="btn btn-primary w-100 mt-3">마이 페이지</a>
				       	</div>
			       	</c:if>
			       	
			       	<!-- 건강 공유 게시판 -->
			       	<div class="d-flex justify-content-between align-items-center">
				       	<h3 class="mt-3 font-weight-bold">건강 공유 게시판</h3>
		        		<a href="#" class="font-weight-bold mt-2 mr-3">전체보기</a>
	        		</div>
			       	<ul class="mt-3">
			       		<li>1</li>
			       		<li>2</li>
			       		<li>3</li>
			       		<li>4</li>
			       		<li>5</li>
			       		<li>6</li>
			       		<li>7</li>
			       		<li>8</li>
			       		<li>9</li>
			       		<li>10</li>
			       	</ul>
			       	
			       	<!-- 건강 뉴스 -->
			       	<div class="d-flex justify-content-between align-items-center">
			       		<h3 class="mt-3 font-weight-bold">건강 뉴스</h3>
		        		<a href="#" class="font-weight-bold mt-2 mr-3">보러가기</a>
	        		</div>
			       	<div><img src="https://cdn.pixabay.com/photo/2014/05/21/22/28/old-newspaper-350376__340.jpg" width="350px" height="300px"></div>
	        	</div>
        	</div>
        </section>
        <hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>