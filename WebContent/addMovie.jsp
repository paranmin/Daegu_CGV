<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/addMovie.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="add_movie">
				<h2>영화 정보</h2>
				<form action="processMovieInfo.jsp" method="post">
					<input type="hidden" name="mode" value="add" />
					<p>
						<input type="text" name="title" placeholder="영화 제목" />
					</p>
					<p>
						<textarea name="description" id="description" cols="30" rows="10" placeholder="영화 상세 설명"></textarea>
					</p>
					<p>
						<input type="file" name="cover" id="cover" />
					</p>
					<p><input type="text" name="schedule" placeholder="ex) 10:20, 12:40 - 콤머(,)로 구분" /></p>
					<p>
						<input type="submit" value="등록" />
					</p>
				</form>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>

<script>
function check_form() {
	var form = document.forms[0];
}
</script>
</body>
</html>