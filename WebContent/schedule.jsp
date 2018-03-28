<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="sch_title" key="TITLE_SCHEDULE" bundle="${message}" />
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/schedule.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="schedule">
				<h2>${sch_title}</h2>
				<table>
			<c:if test="${movieManager.list.size() > 0}">
				<c:forEach var="mInfo" items="${movieManager.list}" varStatus="s">
					<tr>
						<th>${mInfo.title}</th>
						<td>${mInfo.schedule}</td>
					</tr>
				</c:forEach>
			</c:if>
				</table>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>