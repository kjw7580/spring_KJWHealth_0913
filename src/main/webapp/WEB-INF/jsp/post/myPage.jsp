<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 마이 페이지</title>
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
			<h1 class="font-weight-bold mt-2">마이 페이지</h1>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		<div class="mt-3">
			<div>
				<div class="d-flex justify-content-between">
					<h3>내가 쓴 게시물</h3>
					<a href="/post/myList_view"><i class="bi bi-bookmark-heart"></i> 내가 쓴 게시물 모두 보러가기</a>
				</div>
				<table class="table text-center table-striped">
					<thead class="thead-dark">
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>작성자</th>
							<th>시간</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="health" items="${myPagePost }" varStatus="status">
			
							<tr>
								<td>${health.id }</td>
								<td><a href="/post/detail_view?id=${health.id }"> ${health.subject } </a></td>
								<td>${health.userId }</td>
								<td><fmt:formatDate value="${health.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							</tr>
			
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			<div class="text-center">
				<div class="d-flex justify-content-between">
					<h3>내가 기록한 진단결과</h3>
					<a href="/post/record"><i class="bi bi-bookmark-heart-fill"></i> 내가 기록한 진단결과 모두 보러가기</a>
				</div>
				<c:forEach var="diagnosisResult" items="${myPageDiagnosisResult }" varStatus="status">
					<h2 class="mt-5 font-weight-bold">
						<fmt:formatDate value="${diagnosisResult.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" />
					</h2>
					<h3><a href="/post/detail_record?id=${diagnosisResult.id }">보러가기</a></h3>
				</c:forEach>
			</div>
		</div>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>