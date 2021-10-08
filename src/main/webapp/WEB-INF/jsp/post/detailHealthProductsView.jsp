<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 건강용품/식품 상세페이지</title>
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
		<div class="d-flex justify-content-between align-items-center mt-3">
			<blockquote class="blockquote mt-3">
				<h3><p class="mb-0">개인별 건강용품/식품 추천</p></h3>
				<footer class="blockquote-footer">KJW Health <cite title="Source Title">Recommend Health-Products</cite></footer>
			</blockquote>
			<a href="/post/record" class="btn btn-success">기록실로 돌아가기</a>
		</div>
		<div class="mt-3">
			<c:forEach var="product" items="${healthProductsList }" varStatus="status">
				<div class="d-flex mt-3">
					<img src="${product.imagePath }" width="300px" height="300px" class="img-thumbnail" alt="Cinque Terre">
					<div class="detail-health-products form-control ml-4">
						<h2 id="healthProductsName">${product.name }</h2>
						<h1>설명</h1>
					</div>
				</div>
			</c:forEach>
		</div>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>