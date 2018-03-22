<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/writeBoard.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="write_board">
				<h2>감상평 쓰기</h2>
				<form action="processBoardInfo.jsp" method="post">
					<input type="hidden" name="mode" value="add" />
					<p>
						<input type="text" name="writer" placeholder="글쓴이" />
					</p>
					<p>
						<textarea name="content" id="content" cols="30" rows="10" placeholder="감상평 내용"></textarea>
					</p>
					<p>
						<input type="submit" value="등록" />
					</p>
				</form>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>