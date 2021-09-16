<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 건강용품/식품</title>
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
		
		<h1 class="font-weight-bold mt-2">건강용품/식품</h1>
		<section>
			<div class="d-flex">
				<div class="col-2">
					<h4 class="font-weight-bold mt-3">Category</h4>
					<ul class="mt-3">
						<li>카테고리1</li>
						<li>카테고리2</li>
						<li>카테고리3</li>
						<li>카테고리4</li>
						<li>카테고리5</li>
						<li>카테고리6</li>
						<li>카테고리7</li>
					</ul>
				</div>
				
				<div class="col-10 bg-light mt-4">
					<div class="d-flex justify-content-between align-items-center flex-wrap">
						<div>
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품1</h2>
						</div>
						<div>
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품2</h2>
						</div>
						<div>
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품3</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품4</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품5</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품6</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품7</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품8</h2>
						</div>
						<div class="mt-5">
							<img src="https://cdn.pixabay.com/photo/2012/04/10/17/40/vitamins-26622__340.png" width="250px" height="250px">
							<h2>식품/용품9</h2>
						</div>
					</div>
				</div>
				
			</div>
			
			<div class="text-right">
				<a href="#" class="btn btn-primary mt-3">물품 등록하기</a>
			</div>
		</section>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>