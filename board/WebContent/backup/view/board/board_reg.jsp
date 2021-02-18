<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/board_reg.css">
<link rel="stylesheet" href="/css/static.css">
</head>
<body>
	<div class="container_align">
		<div class="container">
			<form action="/board/reg" method="post">
				<h1>게시글 작성</h1>
				<label for="title" class="title"><b>제목</b></label>
				<input type="text" placeholder="제목" name="title" id="title" required>
				<br>
		
				<label for="regdate" class="title"><b>작성일</b></label>
				<input type="text" name="regdate" id="regdate" readonly>
				<br>
		
				<label for="content" class="title"><b>내용</b></label>
				<br>
				<textarea rows="5" cols="50" class="board_content" name="content"></textarea>
				<br>
		
				<div class="write_container">
					<button type="submit" class="write_btn">작성</button>
					<a href="/board/list" class="write_btn">취소</a>
				</div>
			</form>
		</div>
	</div>

	<script>
		const d = new Date();
		const year = d.getFullYear();
		const month = d.getMonth()+1;
		const date = d.getDate();
		let regdate = document.querySelector("#regdate");
		regdate.value = year + "." + month + "." + date;
	</script>
</body>
</html>