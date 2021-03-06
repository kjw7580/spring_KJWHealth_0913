<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
			<blockquote class="blockquote mt-3">
				<h1><p class="mb-0">건강 공유 게시판</p></h1>
				<footer class="blockquote-footer">KJW Health <cite title="Source Title">Post</cite></footer>
			</blockquote>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<div class="d-flex justify-content-end">
			<form class="mt-3">
				<div class="d-flex form-group navbar-left">
					<select name="key" class="w-50 form-control">
						<option value="subject" ${(post.key == "subject") ? " selected ":"" }>제목</option>
						<option value="content" ${(post.key == "content") ? " selected ":"" }>내용</option>
						<option value="createdAt" ${(post.key == "createdAt") ? " selected ":"" }>게시날짜</option>
						<option value="subjectContent" ${(post.key == "subjectContent") ? " selected ":"" }>제목/내용</option>
						<option value="subjectCreatedAt" ${(post.key == "subjectCreatedAt") ? " selected ":"" }>제목/게시날짜</option>
						<option value="contentCreatedAt" ${(post.key == "contentCreatedAt") ? " selected ":"" }>내용/게시날짜</option>
						<option value="all" ${(post.key == "all") ? " selected ":"" }>전체</option>
					</select>
					<input type="text" name="word" class="w-100 form-control" value="${post.word }" placeholder="검색어를 입력하세요..">
					<button type="submit" class="btn btn-info">검색</button>
				</div>
			</form>
			<!-- 
			<div class="input-group mb-3 w-25 mt-3 d-flex justify-content-end">
				<input type="text" class="form-control">
				<div class="input-group-append">
					<span class="input-group-text" id="basic-addon2">검색</span>
				</div>
			</div>
			 -->
		</div>
		
		<div class="text-right">
			<a href="/post/myList_view" class="font-weight-bold mr-5"><i class="bi bi-tags"></i> 내가 쓴 게시글 보러가기</a>
		</div>
		
		<section class="d-flex justify-content-center">
			<div class="w-75 mt-3">
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
						<c:forEach var="health" items="${articles }" varStatus="status">

							<tr>
								<td>${health.id }</td>
								<td><a href="/post/detail_view?id=${health.id }"> ${health.subject } </a></td>
								<td>${health.userId }</td>
								<td><fmt:formatDate value="${health.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
				
				<!-- 
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled">
							<a class="page-link" href="#" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
				 -->
								
				<!-- 
				<div class="d-flex justify-content-between">
					<div>
						<c:if test="${prevId ne 0 }">
							<a href="/post/list_view?prevId=${prevId }">&lt;이전</a>
						</c:if>
					</div>
				
					<div class="text-right">
						<c:if test="${nextId ne 0 }">
							<a href="/post/list_view?nextId=${nextId }">다음></a>
						</c:if>
					</div>
				</div>
				 -->
				 
				<div class="text-right">
					<a href="/post/create_view" class="btn btn-primary mt-2">글쓰기</a>
				</div>
			</div>
		</section>
		<!-- 
		<form class="text-right">
			<div class="w-25 d-flex form-group navbar-left">
				<select name="key" class="w-50 form-control">
					<option value="subject" ${(post.key == "subject") ? " selected ":"" }>제목</option>
					<option value="content" ${(post.key == "content") ? " selected ":"" }>내용</option>
					<option value="createdAt" ${(post.key == "createdAt") ? " selected ":"" }>게시날짜</option>
					<option value="subjectContent" ${(post.key == "subjectContent") ? " selected ":"" }>제목/내용</option>
					<option value="subjectCreatedAt" ${(post.key == "subjectCreatedAt") ? " selected ":"" }>제목/게시날짜</option>
					<option value="contentCreatedAt" ${(post.key == "contentCreatedAt") ? " selected ":"" }>내용/게시날짜</option>
					<option value="all" ${(post.key == "all") ? " selected ":"" }>전체</option>
				</select>
				<input type="text" name="word" class="w-100 form-control" value="${post.word }" placeholder="Search">
				<button type="submit" class="btn btn-info">검색</button>
			</div>
		</form>
		 -->
		 
		<div class="card-footer mt-3"> 
			<nav aria-label="Contacts Page Navigation"> 
				<ul class="pagination justify-content-center m-0"> 
					<c:if test="${pageMaker.prev}"> 
						<li class="page-item"><a class="page-link" href="/post/list_paging?page=${pageMaker.startPage - 1}">이전</a></li> 
					</c:if> 
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx"> 
						<li class="page-item" <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>> 
							<a class="page-link" href="/post/list_paging?page=${idx}">${idx}</a> 
						</li> 
					</c:forEach> 
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> 
						<li class="page-item"><a class="page-link" href="/post/list_paging?page=${pageMaker.endPage + 1}">다음</a></li> 
					</c:if> 
				</ul> 
			</nav> 
		</div>
		
		 
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>