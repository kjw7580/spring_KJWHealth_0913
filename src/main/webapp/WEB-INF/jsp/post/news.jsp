<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 건강 뉴스</title>
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
			<blockquote class="blockquote mt-3">
				<h1><p class="mb-0">건강 뉴스</p></h1>
				<footer class="blockquote-footer">KJW Health <cite title="Source Title">News</cite></footer>
			</blockquote>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<section>
			<div class="d-flex">
				
				<div class="col-12 bg-light mt-4">
					<div class="d-flex justify-content-between align-items-center flex-wrap">
						<c:forEach var="news" items="${articles }" varStatus="status">
							<div>
								<div class="text-right font-weight-bold mb-2 mt-2">
									<a href="/post/detail_news?id=${news.id }">자세히 보기</a>
								</div>
								<img src="${news.imagePath }" width="300px" height="300px" class="img-thumbnail" alt="Cinque Terre">
								<c:choose>
							        <c:when test="${fn:length(news.title) gt 11}">
							        	<h2><c:out value="${fn:substring(news.title, 0, 10)}" />...</h2>
							        </c:when>
							        <c:otherwise>
							        	<h2><c:out value="${news.title}" />...</h2>
							        </c:otherwise>
								</c:choose>
							</div>
							
						</c:forEach>
					</div>
				</div>
			</div>	
			
			<div class="card-footer mt-3"> 
				<nav aria-label="Contacts Page Navigation"> 
					<ul class="pagination justify-content-center m-0"> 
						<c:if test="${pageMaker.prev}"> 
							<li class="page-item"><a class="page-link" href="/post/news_list_paging?page=${pageMaker.startPage - 1}">이전</a></li> 
						</c:if> 
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx"> 
							<li class="page-item" <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>> 
								<a class="page-link" href="/post/news_list_paging?page=${idx}">${idx}</a> 
							</li> 
						</c:forEach> 
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> 
							<li class="page-item"><a class="page-link" href="/post/news_list_paging?page=${pageMaker.endPage + 1}">다음</a></li> 
						</c:if> 
					</ul> 
				</nav> 
			</div>
			
		</section>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>