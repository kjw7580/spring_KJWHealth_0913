<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KJW Health - 자가진단 저장</title>
	
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
		<section class="d-flex justify-content-center">
			<div class="w-75 my-5">
				<h1 class="text-center">자가진단 입력</h1>
				
				<div>
					<label>minBMI : </label>
					<input type="text" class="form-control col-11 ml-3" id="minBMIInput">
					<label>maxBMI : </label>
					<input type="text" class="form-control col-11 ml-3" id="maxBMIInput">
					<label>자가진단 : </label>
					<input type="text" class="form-control col-11 ml-3" id="contentInput">
				</div>

				<div class="d-flex justify-content-between mt-3">
					<a href="/admin/main" class="btn btn-info">홈으로</a>
					<button type="button" class="btn btn-success" id="saveBtn">저장</button>
				</div>
			</div>
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function() {
			$("#saveBtn").on("click", function() {
				var minBMI = $("#minBMIInput").val();
				var maxBMI = $("#maxBMIInput").val();
				var content = $("#contentInput").val().trim();
				
				if(minBMI == 0 || minBMI == "") {
					alert("minBMI를 입력하세요.");
					return;
				}
				
				if(maxBMI == 0 || maxBMI == "") {
					alert("maxBMI를 입력하세요.");
					return;
				}
				
				if(content == null || content == "") {
					alert("content를 입력하세요.");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/post/self_diagnosis/create",
					data:{"minBMI":minBMI, "maxBMI":maxBMI, "content":content},
					success:function(data) {
						if(data.result == "success") {
							alert("저장 되었습니다.");
							location.reload();
						} else {
							alert("저장을 실패했습니다!");
						}
					},
					error(e) {
						alert("error");
					}
						
				});
			});
		});
	</script>
</body>
</html>