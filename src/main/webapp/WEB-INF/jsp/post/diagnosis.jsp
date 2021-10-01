<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
				    <input type="text" class="form-control" id="ageInput">
				</div>
				
				<div class="input-group input-group-lg mt-5">
				    <div class="input-group-prepend">
				    	<span class="input-group-text">키</span>
				    </div>
				    <input type="text" class="form-control" id="heightInput">
				</div>
				
				<div class="input-group input-group-lg mt-5">
				    <div class="input-group-prepend">
				    	<span class="input-group-text">몸무게</span>
				    </div>
				    <input type="text" class="form-control" id="weightInput">
				</div>
				
				<div class="text-right">
					<button type="button" id="inputBtn" class="btn btn-primary mt-3">입력하기</button>
				</div>
			</div>
			
		</div>
		
		<div class="d-flex justify-content-center">
		
			<!-- 
			<div class="bmi-emptyBox w-50 mt-3 form-control">
				<h1 class="font-weight-bold mt-4">당신의 BMI 지수는?</h1>
				
			</div>
			 -->
			 
			<div class="bmi-box w-50 mt-3 form-control">
				<h1 class="font-weight-bold mt-4">당신의 BMI 지수는?</h1>
				<h1 class="text-right mt-3" id="BMIResult"></h1>
				<h1 class="text-right mt-3" id="BMIText"></h1>
				<!--
				<c:forEach var="bmi" items="${bmi }" varStatus="status">
					<c:set var="weight" value="${bmi.weight }" />
					<fmt:parseNumber var="weight" type="number" value="${weight }" />
					<c:set var="height" value="${bmi.height }" />
					<fmt:parseNumber var="height" type="number" value="${height }" />
					<c:choose>
						<c:when test="${weight / ((height / 100) * (height/100)) < 18.5 }">
							<h1 class="text-primary text-right mt-3" id="underWeight">${weight / ((height / 100) * (height / 100)) }<br> 저체중입니다.</h1>
						</c:when>
						<c:when test="${weight / ((height / 100) * (height/100)) < 23 }">
							<h1 class="text-success text-right mt-3" id="normalWeight">${weight / ((height / 100) * (height / 100)) }<br> 정상입니다.</h1>
						</c:when>
						<c:when test="${weight / ((height / 100) * (height/100)) < 25 }">
							<h1 class="text-warning text-right mt-3" id="overWeight">${weight / ((height / 100) * (height / 100)) }<br> 과체중입니다.</h1>
						</c:when>
						<c:when test="${weight / ((height / 100) * (height/100)) > 25 }">
							<h1 class="text-danger text-right mt-3" id="obesityWeight">${weight / ((height / 100) * (height / 100)) }<br> 비만입니다.</h1>
						</c:when>
					</c:choose>
				</c:forEach>
				-->
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
					<!-- Modal
					<button type="button" class="btn btn-primary mt-3" data-toggle="modal" data-target=".bd-example-modal-lg" id="modalBtn">진단하기</button>
					<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					    <div class="modal-dialog modal-lg">
					    	<div class="d-flex justify-content-center align-items-center modal-content">
								<div class="w-75">
									<div class="d-flex justify-content-between align-items-center">
										<h1 class="font-weight-bold" id="nowBMI">진단결과</h1>
										<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
									</div>
									
									<div class="d-flex justify-content-between align-items-center mt-5">
										<h3 class="font-weight-bold mt-3">AI 자가진단 결과</h3>
										<button type="button" class="btn btn-primary recordBtn">기록하기</button>
									</div>
									<c:set var="BMI" value="${weight / ((height / 100) * (height / 100)) }" />
									<fmt:parseNumber var="BMI" type="number" value="${BMI }" />
									<c:if test="${BMI < 100 }">
										<div class="mt-3">
											<c:forEach var="selfDiagnosis" items="${selfDiagnosis }" varStatus="status">
												<c:if test="${BMI > selfDiagnosis.minBMI && BMI < selfDiagnosis.maxBMI }">
													<div class="text-left">${selfDiagnosis.content }</div>
												</c:if>
											</c:forEach>
										</div>
									</c:if>
									
									<h3 class="font-weight-bold text-left mt-3">개인별 식단 추천</h3>
									<div class="d-flex justify-content-between mt-3">
										<c:forEach var="diet" items="${diet }" varStatus="status">
											<c:if test="${BMI > diet.minBMI && BMI < diet.maxBMI }">
												<div>
													<img src="${diet.imagePath }" width="150px" height="150px">
													<h2>${diet.name }</h2>
												</div>
											</c:if>
										</c:forEach>
									</div>
									
									<div class="text-right">
										<a href="/post/recipe" class="btn btn-primary mt-3" id="recipeBtn">레시피 보러가기</a>
									</div>
									
									<h3 class="font-weight-bold text-left mt-3">개인별 건강용품/식품 추천</h3>
									<div class="d-flex justify-content-between mt-3">
										<c:forEach var="product" items="${healthProducts }" varStatus="status">
											<c:if test="${BMI > product.minBMI && BMI < product.maxBMI }">
												<div>
													<img src="${product.imagePath }" width="150px" height="150px">
													<h2>${product.name }</h2>
												</div>
											</c:if>
										</c:forEach>
									</div>
									
									<div class="text-right">
										<a href="/post/health_products" class="btn btn-primary mt-3">모두 보러가기</a>
									</div>
								</div>
					    	</div>
						</div>
					</div>
					-->
				</div>
			</div>
		</div>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script>
		$(document).ready(function() {
			$("#inputBtn").on("click", function() {
				var age = $("#ageInput").val();
				var height = $("#heightInput").val();
				var weight = $("#weightInput").val();
//				var BMI = ${weight / ((height / 100) * (height / 100)) };
				
				if(age == 0 || age == "") {
					alert("age를 입력하세요.");
					return;
				}
				
				if(height == 0 || height == "") {
					alert("height를 입력하세요.");
					return;
				}
				
				if(weight == 0 || weight == "") {
					alert("weight을 입력하세요.");
					return;
				}
			
//				if(BMI < 18.5) {
//					$("#underWeight").removeClass("d-none");
//					return;
//				} else if(BMI < 23) {
//					$("#normalWeight").removeClass("d-none");
//					return;
//				} else if(BMI < 25) {
//					$("#overWeight").removeClass("d-none");
//					return;
//				} else if(BMI > 25) {
//					$("#obesityWeight").removeClass("d-none");
//					return;
//				}
				
				$.ajax({
					type:"post",
					url:"/post/BMI/create",
					data:{"age":age, "height":height, "weight":weight},
					success:function(data) {
						if(data.result == "success") {
							var bmi = data.bmi;
							alert("입력 성공");
							if(bmi < 18.5) {
								document.getElementById("BMIResult").innerHTML = "<font color=blue>" + bmi + "</font>";
								document.getElementById("BMIText").innerHTML = "<font color=blue>저체중입니다.</font>";
							} else if(bmi < 23) {
								document.getElementById("BMIResult").innerHTML = "<font color=green>" + bmi + "</font>";
								document.getElementById("BMIText").innerHTML = "<font color=green>정상입니다.</font>";
							} else if(bmi < 25) {
								document.getElementById("BMIResult").innerHTML = "<font color=orange>" + bmi + "</font>";
								document.getElementById("BMIText").innerHTML = "<font color=orange>과체중입니다.</font>";
							} else if(bmi > 25) {
								document.getElementById("BMIResult").innerHTML = "<font color=red>" + bmi + "</font>";
								document.getElementById("BMIText").innerHTML = "<font color=red>비만입니다.</font>";
							}
						} else {
							alert("입력을 실패했습니다!");
						}
					},
					error(e) {
						alert("error");
					}
						
				});
				
//				$(".bmi-emptyBox").addClass("d-none");
//				$(".bmi-box").removeClass("d-none");
				
			});
			
			
			$("#recipeBtn").on("click", function() {
				var BMIValue = $("#BMIResult").val();
			});
			
			/*
			$("#modalBtn").on("click", function() {				
				var age = $("#ageInput").val();
				var height = $("#heightInput").val();
				var weight = $("#weightInput").val();
				var BMI = ${weight / ((height / 100) * (height / 100)) };
				document.getElementById("nowBMI").innerHTML=BMI;
			});
			*/
		});
	</script>
</body>
</html>