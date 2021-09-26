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
		
		<div class="d-flex justify-content-between align-items-center">
			<h1 class="font-weight-bold mt-2">건강용품/식품</h1>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<section>
			<div class="d-flex">
				<div class="col-2">
					<ul class="list-group">
						<li class="list-group-item font-weight-bold">Category</li>
						<li class="list-group-item list-group-item-primary">list group item</li>
						<li class="list-group-item list-group-item-secondary">list group item</li>
						<li class="list-group-item list-group-item-success">list group item</li>
						<li class="list-group-item list-group-item-danger">list group item</li>
						<li class="list-group-item list-group-item-warning">list group item</li>
						<li class="list-group-item list-group-item-info">list group item</li>
						<li class="list-group-item list-group-item-light">list group item</li>
						<li class="list-group-item list-group-item-dark">list group item</li>
					</ul>
				</div>
				
				<div class="col-10 bg-light mt-4">
					<div class="d-flex justify-content-between align-items-center flex-wrap">
						<c:forEach var="product" items="${healthProducts }" varStatus="status">
							<div class="card mt-2" style="width: 250px;">
							<img class="card-img-top" src="${product.imagePath }" alt="Card image cap">
								<div class="card-body">
									<h2>${product.name }</h2>
								</div>
							</div>
						</c:forEach>
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