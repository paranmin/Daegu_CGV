<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="board_title" key="TITLE_BOARD" bundle="${message}" />
<jsp:useBean id="boardManager" class="com.daegu_cgv.board.BoardManager" scope="application" />
<jsp:useBean id="boardInfo" class="com.daegu_cgv.board.BoardInfo" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/board.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="board">
				<h2>${board_title}</h2>
				
				<table>
					<colgroup>
						<col width="78%">
						<col width="8%">
						<col width="14%">
					</colgroup>
			<%
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				pageContext.setAttribute("sdf", sdf);
			%>
			<fmt:message var="msg_no_port" key="MSG_NO_POST" bundle="${message}" />
			<fmt:message var="btn_del_all_post" key="BTN_DEL_POST" bundle="${message}" />
			<fmt:message var="btb_add_post" key="BTN_ADD_POST" bundle="${message}" />
			<c:if test="${boardManager.list.size() > 0}">
				<c:forEach var="board" items="${boardManager.list}" varStatus="s">
					<tr>
						<td class="content">${board.content}</td>
						<td class="writer">${board.writer}</td>
						<td class="time">${sdf.format(board.writeTime)}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${boardManager.list.size() == 0}">
					<tr><td colspan="3" class="center">${msg_no_port}</td></tr>
			</c:if>
				</table>
				<div class="add_btn">
					<a href="processBoardInfo.jsp?mode=removeAll" class="btn del">${btn_del_all_post}</a>
					<a href="writeBoard.jsp" class="btn">${btb_add_post}</a>
				</div>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>