<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 나의 기록실</title>
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
			<h1 class="font-weight-bold mt-2">나의 기록실</h1>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>

		<!-- 
		<div class="text-right w-75 mt-3">
			<a href="#" class="btn btn-primary">자세히 보기</a>
		</div>
		 -->
		<hr>
		<div class="text-center">
			<c:forEach var="diagnosisResult" items="${articles }" varStatus="status">
				<h2 class="mt-5 font-weight-bold">
					기록된 Date : <fmt:formatDate value="${diagnosisResult.createdAt }" pattern="yyyy-MM-dd HH:mm:ss" />
					<c:if test="${diagnosisResult.userId eq userId}">
						<button type="button" class="btn btn-danger deleteBtn ml-2 mb-2" data-record-id="${diagnosisResult.id }">삭제</button>
					</c:if>
				</h2>
				<h3><a href="/post/detail_record?id=${diagnosisResult.id }" class="btn btn-outline-primary">진단결과 보러가기</a></h3>
				<h3><a href="/post/detail_recipe?id=${diagnosisResult.id }" class="btn btn-outline-success">레시피 보러가기</a></h3>
				<h3><a href="/post/detail_health_products?id=${diagnosisResult.id }" class="btn btn-outline-info">건강용품/식품 보러가기</a></h3>
				<!-- 
				<c:forEach var="selfDiagnosis" items="${selfDiagnosis }" varStatus="status">
				</c:forEach>
				 -->
			</c:forEach>
		</div>
		
		<div class="card-footer mt-3"> 
			<nav aria-label="Contacts Page Navigation"> 
				<ul class="pagination justify-content-center m-0"> 
					<c:if test="${pageMaker.prev}"> 
						<li class="page-item"><a class="page-link" href="/post/record_list_paging?page=${pageMaker.startPage - 1}">이전</a></li> 
					</c:if> 
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx"> 
						<li class="page-item" <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>> 
							<a class="page-link" href="/post/record_list_paging?page=${idx}">${idx}</a> 
						</li> 
					</c:forEach> 
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> 
						<li class="page-item"><a class="page-link" href="/post/record_list_paging?page=${pageMaker.endPage + 1}">다음</a></li> 
					</c:if> 
				</ul> 
			</nav> 
		</div>
		
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
	<script>
		$(document).ready(function(){
			
			$(".deleteBtn").on("click",function(){
				
				var id = $(this).data("record-id");
				
				
				$.ajax({
					type:"get",
					url:"/post/record/delete",
					data:{"id":id},
					success:function(data){
						if(data.result == "success"){
							alert("기록 삭제 성공");
							location.reload();
						}else{
							alert("기록 삭제 실패");
						}
					},
					error:function(e){
						alert("error");
					}
					
				});
			});
			
		});
	</script>
</html>