<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 기록실 상세페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
	<!-- 
	<c:forEach var="selfDiagnosis" items="${selfDiagnosisList }" varStatus="status">
		<div class="text-left" id="selfDiagnosisContent">${selfDiagnosis.content }</div>
	</c:forEach>
	
	<c:forEach var="diet" items="${dietList }" varStatus="status">
		<div class="card" style="width: 18rem;">
			<img class="card-img-top" id="dietImagePath" src="${diet.imagePath }" alt="Card image cap">
			<div class="card-body">
				<h2 id="dietName">${diet.name }</h2>
			</div>
		</div>
	</c:forEach>
	
	<c:forEach var="healthProducts" items="${healthProductsList }" varStatus="status">
		<div class="card" style="width: 18rem;">
			<img class="card-img-top" id="healthProductsImagePath" src="${healthProducts.imagePath }" alt="Card image cap">
			<div class="card-body">
				<h2 id="healthProductsName">${healthProducts.name }</h2>
			</div>
		</div>
	</c:forEach>
	 -->
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="d-flex justify-content-center align-items-center">
			<div class="w-75">
				<div class="d-flex justify-content-between align-items-center">
					<nav class="navbar navbar-light mt-3">
						<a class="navbar-brand" href="#">
							<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="50" height="50" class="d-inline-block align-top" alt="">
						</a>
						<h1 class="font-weight-bold" id="nowBMI">진단결과</h1>
					</nav>
					<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
				</div>
				
				<div class="d-flex justify-content-between align-items-center mt-5">
					<nav class="navbar navbar-light">
						<a class="navbar-brand" href="#">
							<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="30" height="30" class="d-inline-block align-top" alt="">
						</a>
						<h2 class="font-weight-bold">AI 자가진단 결과</h2>
					</nav>
				</div>

				<div class="mt-3">
					<c:forEach var="selfDiagnosis" items="${selfDiagnosisList }" varStatus="status">
						<div class="text-left" id="selfDiagnosisContent">${selfDiagnosis.content }</div>
					</c:forEach>
				</div>
				
				<div class="d-flex mt-3">
					<nav class="navbar navbar-light">
						<a class="navbar-brand" href="#">
							<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="30" height="30" class="d-inline-block align-top" alt="">
						</a>
						<h2 class="font-weight-bold">개인별 식단 추천</h2>
					</nav>
				</div>
				<div class="d-flex justify-content-between mt-3">
					<c:forEach var="diet" items="${dietList }" varStatus="status">
						<div class="card" style="width: 18rem;">
						<img class="card-img-top" id="dietImagePath" src="${diet.imagePath }" alt="Card image cap">
							<div class="card-body">
								<h2 id="dietName">${diet.name }</h2>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="text-right">
					<a href="/post/recipe" class="btn btn-primary mt-3" id="recipeBtn">레시피 보러가기</a>
				</div>
				
				<div class="d-flex mt-3">
					<nav class="navbar navbar-light">
						<a class="navbar-brand" href="#">
							<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="30" height="30" class="d-inline-block align-top" alt="">
						</a>
						<h2 class="font-weight-bold">개인별 건강용품/식품 추천</h2>
					</nav>
				</div>
				<div class="d-flex justify-content-between mt-3">
					<c:forEach var="product" items="${healthProductsList }" varStatus="status">
						<div class="card" style="width: 18rem;">
						<img class="card-img-top" id="healthProductsImagePath" src="${product.imagePath }" alt="Card image cap">
							<div class="card-body">
								<h2 id="healthProductsName">${product.name }</h2>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="text-right">
					<a href="/post/health_products" class="btn btn-primary mt-3">모두 보러가기</a>
				</div>
			</div>
    	</div>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>