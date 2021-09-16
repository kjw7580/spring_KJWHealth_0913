<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 건강 공유 게시판</title>
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
			<h1 class="font-weight-bold mt-2">건강 공유 게시판</h1>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<div class="d-flex justify-content-end">
			<div class="input-group mb-3 w-25 mt-3 d-flex justify-content-end">
				<input type="text" class="form-control">
				<div class="input-group-append">
					<span class="input-group-text" id="basic-addon2">검색</span>
				</div>
			</div>
		</div>
		
		<table class="table text-center mt-3">
			<thead>
				<tr>
					<th>No.</th>
					<th>게시물</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>게시글1</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>2</td>
					<td>게시글2</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>3</td>
					<td>게시글3</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>4</td>
					<td>게시글4</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>5</td>
					<td>게시글5</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>6</td>
					<td>게시글6</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>7</td>
					<td>게시글7</td>
					<td>김진우</td>
				<tr>
				<tr>
					<td>8</td>
					<td>게시글8</td>
					<td>김진우</td>
				<tr>
			</tbody>
		</table>
		<div class="text-right">
			<a href="/post/create_view" class="btn btn-primary mt-3">게시물 작성</a>
		</div>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>