<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="reviwe_title" key="MSG_BOARD_TITLE" bundle="${message}" />
<fmt:message var="msg_review_writer" key="MSG_BOARD_WRITER" bundle="${message}" />
<fmt:message var="msg_review_content" key="MSG_BOARD_CONTENT" bundle="${message}" />
<fmt:message var="btn_add" key="BTN_INSERT_REVIEW" bundle="${message}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/writeBoard.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="write_board">
				<h2>${reviwe_title}</h2>
				<form action="processBoardInfo.jsp" method="post">
					<input type="hidden" name="mode" value="add" />
					<p>
						<input type="text" name="writer" placeholder="${msg_review_writer}" />
					</p>
					<p>
						<textarea name="content" id="content" cols="30" rows="10" placeholder="${msg_review_content}"></textarea>
					</p>
					<p>
						<input type="submit" value="${btn_add}" />
					</p>
				</form>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>