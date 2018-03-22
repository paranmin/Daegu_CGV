<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<jsp:useBean id="movieInfo" class="com.daegu_cgv.movie.MovieInfo" scope="page" />
<%
	String sIdx = request.getParameter("idx");
	movieInfo = movieManager.get(Integer.parseInt(sIdx));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/movieDetail.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<% if (movieInfo != null) { %>
			<div class="movieInfo">
				<h2>영화 정보 &lt;<%= movieInfo.getTitle() %>&gt;</h2>
				<div class="infoArea">
					<img src="images/<%= movieInfo.getCover() %>" alt="<%= movieInfo.getTitle() %>" title="<%= movieInfo.getTitle() %>" />
					<h3><%= movieInfo.getTitle() %></h3>
					<p class="synopsis">&lt;줄거리&gt;</p>
					<p><%=movieInfo.getDescription() %></p>
				</div>
			</div>
			<% } %>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>