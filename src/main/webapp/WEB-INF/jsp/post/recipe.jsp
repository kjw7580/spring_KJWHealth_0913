<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 식단 레시피</title>
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
		
		<div class="d-flex justify-content-between align-items-center">
			<nav class="navbar navbar-light mt-3">
				<a class="navbar-brand" href="#">
					<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="50" height="50" class="d-inline-block align-top" alt="">
				</a>
				<h1 class="font-weight-bold">식단 레시피</h1>
			</nav>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<div class="d-flex">
			<nav class="navbar navbar-light mt-3">
				<a class="navbar-brand" href="#">
					<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="30" height="30" class="d-inline-block align-top" alt="">
				</a>
				<h2 class="font-weight-bold mt-2">식단</h2>
			</nav>
		</div>
		
		<c:forEach var="diet" items="${diet }" varStatus="status">
			<div class="mt-5">
				<div class="card bg-dark text-dark">
					<img class="card-img" src="${diet.imagePath }" alt="Card image" height="500px">
					<div class="card-img-overlay">
						<h5 class="card-title">${diet.name }</h5>
						<p class="card-text">${diet.recipe }</p>
					</div>
				</div>
				<!-- 
				<div class="d-flex">
					<img src="${diet.imagePath }" width="300px" height="300px">
					<div class="ml-5 mr-5">
						${diet.recipe }
					</div>
				</div>
				 -->
			</div>
		</c:forEach>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
</body>
</html>