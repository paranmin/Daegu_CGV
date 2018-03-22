<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/info.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<p class="add_btn"><a href="addMovie.jsp" class="btn">상영 영화 추가</a></p>
			<%
				if (movieManager.getList().size() == 0) {
			%>
				<jsp:include page="infoList.jsp" />
			<%	
				}
			%>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>