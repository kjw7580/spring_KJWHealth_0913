<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 진단결과</title>
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
					<h1 class="font-weight-bold">진단결과</h1>
					<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
				</div>
				
				<div class="d-flex justify-content-between align-items-center mt-5">
					<h3 class="font-weight-bold mt-3">AI 자가진단 결과</h3>
					<button type="button" class="btn btn-primary">기록하기</button>
				</div>
				<div class="mt-3">
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
					블라블라블라블라블라블라블라블라블라블라블라블라
				</div>
				
				<h3 class="font-weight-bold mt-3">개인별 식단 추천</h3>
				<div class="d-flex justify-content-between mt-3">
					<div>
						<img src="https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg" width="150px" height="150px">
						<h2>식단1</h2>
					</div>
					<div>
						<img src="https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg" width="150px" height="150px">
						<h2>식단2</h2>
					</div>
					<div>
						<img src="https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg" width="150px" height="150px">
						<h2>식단3</h2>
					</div>
				</div>
				
				<div class="text-right">
					<button type="button" class="btn btn-primary mt-3">레시피 보러가기</button>
				</div>
				
				<h3 class="font-weight-bold mt-3">개인별 건강용품/식품 추천</h3>
				<div class="d-flex justify-content-between mt-3">
					<div>
						<img src="https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855__340.jpg" width="150px" height="150px">
						<h2>용품/식품1</h2>
					</div>
					<div>
						<img src="https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855__340.jpg" width="150px" height="150px">
						<h2>용품/식품2</h2>
					</div>
					<div>
						<img src="https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855__340.jpg" width="150px" height="150px">
						<h2>용품/식품3</h2>
					</div>
				</div>
				
				<div class="text-right">
					<button type="button" class="btn btn-primary mt-3">모두 보러가기</button>
				</div>
			</div>
		</div>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>