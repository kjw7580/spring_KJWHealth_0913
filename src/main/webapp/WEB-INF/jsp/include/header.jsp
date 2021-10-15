<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<header class="d-flex align-items-center justify-content-between">
	<nav class="navbar navbar-light">
		<a class="navbar-brand d-flex" href="/post/main">
			<img src="https://cdn.pixabay.com/photo/2012/04/14/12/39/alphabets-33748_960_720.png" width="40" height="40" class="d-inline-block align-top mt-1" alt="">
			<h1 class="font-weight-bold text-primary ml-3">KJW Health</h1>
		</a>
	</nav>
	
	<c:choose>
		<c:when test="${userId eq 2 }">
			<div class="mr-4 d-flex">
				<div><i class="bi bi-person-fill"></i> ${userName }님 <a href="/user/sign_out">로그아웃</a></div>
				<a href="/admin/main" class="text-dark ml-2"><i class="bi bi-gear"></i></a>
			</div>
		</c:when>
		
		<c:when test="${not empty userName }">
			<div class="mr-4"><i class="bi bi-person-fill"></i> ${userName }님 <a href="/user/sign_out">로그아웃</a></div>
		</c:when>
		
	</c:choose>
</header>