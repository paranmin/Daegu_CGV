<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="btn_add_movie" key="BTN_ADD_MOVIE" bundle="${message}" />
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/info.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<p class="add_btn"><a href="addMovie.jsp" class="btn">${btn_add_movie}</a></p>
			<c:if test="${movieManager.list.size() > 0}">
				<div class="movieList">
				<c:forEach var="mInfo" items="${movieManager.list}" varStatus="s">
					<div class="movieItem">
						<a href="viewMovieInfo.jsp?idx=${s.index}">
							<img src="images/${mInfo.cover}" alt="${mInfo.title}" title="${mInfo.title}" />
							<span class="title">${mInfo.title}</span>
						</a>
					</div>
				</c:forEach>
				</div>
			</c:if>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>