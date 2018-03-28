<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="btn_add_movie" key="BTN_ADD_MOVIE" bundle="${message}" />
<fmt:message var="movie_title" key="TITLE_SET_MOVIE" bundle="${message}" />
<fmt:message var="movie_sysnopsis" key="MSG_MOVIE_SYNOPSIS" bundle="${message}" />
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<jsp:useBean id="movieInfo" class="com.daegu_cgv.movie.MovieInfo" scope="page" />
<%
	String sIdx = request.getParameter("idx");
	movieInfo = movieManager.get(Integer.parseInt(sIdx));
	pageContext.setAttribute("movieInfo", movieInfo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/movieDetail.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<c:if test="${movieInfo != null}">
			<div class="movieInfo">
				<h2>${movie_title} &lt;${movieInfo.title}&gt;</h2>
				<div class="infoArea">
					<img src="images/${movieInfo.cover}" alt="${movieInfo.title}" title="${movieInfo.title}" />
					<h3>${movieInfo.title}</h3>
					<p class="synopsis">${movie_sysnopsis}</p>
					<p>${movieInfo.description}</p>
				</div>
			</div>
			</c:if>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>