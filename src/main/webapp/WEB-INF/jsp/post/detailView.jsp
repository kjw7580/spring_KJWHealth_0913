<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 게시글 상세 페이지</title>
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
				<h1><p class="mb-0">게시글 상세 페이지</p></h1>
				<footer class="blockquote-footer">KJW Health <cite title="Source Title">Detail Post</cite></footer>
			</blockquote>
			<a href="/post/main" class="btn btn-success">홈으로 돌아가기</a>
		</div>
		
		<section class="d-flex justify-content-center">
			<c:forEach var="postWithComments" items="${postList }" varStatus="status">
				<div class="detail-box w-75 mt-5">
					<div class="input-group mb-3 mt-5">
						<div class="input-group-prepend">
							<span class="input-group-text">제목</span>
						</div>
						<input type="text" class="form-control" placeholder="제목을 입력하세요." id="titleInput" value="${postWithComments.post.subject }">
					</div>
					
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">내용</span>
						</div>
						<textarea class="form-control" rows="10" placeholder="내용을 입력하세요." id="contentInput">${postWithComments.post.content }</textarea>
					</div>
					
					<!-- 제목, 내용, 파일 업로드 
					<div class="d-flex align-items-center">
						<label>제목 : </label>
						<input type="text" class="form-control col-11 ml-3" id="titleInput" value="${post.subject }">
					</div>
					
					<textarea class="form-control mt-3" rows="5" id="contentInput">${post.content }</textarea>
					-->
					
					<c:if test="${not empty postWithComments.post.imagePath }">
						<img class="mt-3" src="${postWithComments.post.imagePath }">
					</c:if>
					
					<!-- 댓글 -->
					<div class="font-weight-bold">댓글</div>
					<hr>
					<c:forEach var="comment" items="${postWithComments.commentList }" varStatus="status">
						<c:if test="${postWithComments.post.id eq comment.postId }">
							<div class="d-flex justify-content-between">
								<div class="d-flex">
									<div class="font-weight-bold mr-2">${comment.userName }</div>
									<div>${comment.content }</div>
								</div>
								<c:if test="${comment.userId eq userId }">
									<div>
										<button type="button" class="btn btn-sm btn-outline-danger deleteCommentBtn" data-comment-id="${comment.id }">삭제</button>
									</div>
								</c:if>
							</div>
						</c:if>
					</c:forEach>
					
					<!-- 댓글 입력 -->
					<div class="d-flex justify-content-between mt-2">
						<input type="text" class="form-control mr-1" placeholder="댓글 달기..." id="commentInput-${postWithComments.post.id }">
						<button type="button" class="btn btn-primary commentBtn" data-post-id="${postWithComments.post.id }">게시</button>
					</div>
					<div class="d-flex justify-content-between mt-5">
						<div>
							<a href="/post/list_view" class="btn btn-info">목록으로</a>
							<c:if test="${postWithComments.post.userId eq userId }">
								<button type="button" class="btn btn-danger" id="deleteBtn" data-post-id="${postWithComments.post.id}">삭제</button>
							</c:if>
						</div>
						<c:if test="${postWithComments.post.userId eq userId }">
							<button type="button" class="btn btn-success" id="updateBtn" data-post-id="${postWithComments.post.id}">수정</button>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</section>
		<hr>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#updateBtn").on("click", function() {
				var postId = $(this).data("post-id");
				$.ajax({
					type:"post",
					url:"/post/update",
					data:{"id":postId, "subject":$("#titleInput").val(), "content":$("#contentInput").val()},
					success:function(data) {
						
						if(data.result == "success") {
							alert("수정 되었습니다.");
							location.reload();
						} else {
							alert("수정 실패");
						}
					},
					error:function(e) {
						alert("error");
					}
				});
			});
			
			$("#deleteBtn").on("click", function() {
				var postId = $(this).data("post-id");
				
				$.ajax({
					type:"get",
					url:"/post/delete",
					data:{"id":postId},
					success:function(data) {
						if(data.result == "success") {
							location.href="/post/list_view"
						} else {
							alert("삭제 실패");
						}
					},
					error:function(e) {
						alert("error");
					}
				});
			});
			
			$(".commentBtn").on("click", function() {
				var postId = $(this).data("post-id");
				var comment = $("#commentInput-" + postId).val().trim();

				if(comment == null || comment == "") {
					alert("내용을 입력하세요.");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/post/comment/create",
					data:{"postId":postId, "content":comment},
					success:function(data) {
						if(data.result == "success") {
							location.reload();
						} else {
							alert("댓글 쓰기에 실패했습니다!");
						}
					},
					error(e) {
						alert("error");
					}
					
				});
			});
			
			$(".deleteCommentBtn").on("click",function(){
				
				var id = $(this).data("comment-id");	
				
				$.ajax({
					type:"get",
					url:"/post/comment/delete",
					data:{"id":id},
					success:function(data){
						if(data.result == "success"){
//							alert("댓글 삭제 성공");
							location.reload();
						}else{
							alert("댓글 삭제 실패");
						}
					},
					error:function(e){
						alert("error");
					}
					
				});
			});
		});
	</script>
</body>
</html>