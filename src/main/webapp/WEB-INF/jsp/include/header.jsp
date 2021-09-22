<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<header class="d-flex align-items-center justify-content-between">
	<h2 class="ml-3">KJW Health</h2>
	
	<c:choose>
		<c:when test="${userId eq 2 }">
			<div class="mr-4 d-flex">
				<div>${userName }님 <a href="/user/sign_out">로그아웃</a></div>
				<a href="/admin/main" class="text-dark ml-2"><i class="bi bi-gear"></i></a>
			</div>
		</c:when>
		
		<c:when test="${not empty userName }">
			<div class="mr-4"> ${userName }님 <a href="/user/sign_out">로그아웃</a></div>
		</c:when>
		
	</c:choose>
</header>