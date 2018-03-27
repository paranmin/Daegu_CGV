<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="btn_login" key="BTN_LOGIN" bundle="${message}" />
<fmt:message var="btn_logout" key="BTN_LOGOUT" bundle="${message}" />
<fmt:message var="menu_home" key="MENU_HOME" bundle="${message}" />
<fmt:message var="menu_movie" key="MENU_MOVIE" bundle="${message}" />
<fmt:message var="menu_schedule" key="MENU_SCHEDULE" bundle="${message}" />
<fmt:message var="menu_board" key="MENU_BOARD" bundle="${message}" />
<%
	String loginId = (String) session.getAttribute("loginId");
	boolean isLogin = false;
	if (loginId != null) {
		isLogin = true;
	}
%>
<header>
	<h1></h1>
	<p class="login">
	<c:if test="${!isLogin}">
		<a href="loginForm.jsp">${btn_login}</a>
	</c:if>
	<c:if test="${isLogin}">
		<a href="logout.jsp">${btn_logout}</a>&nbsp;&nbsp;<span>[${loginId}]님 방가방가!</span>
	</c:if>
	</p>
	<nav>
		<ul>
			<li><a href="main.jsp">${menu_home}</a></li>
			<li><a href="info.jsp">${menu_movie}</a></li>
			<li><a href="schedule.jsp">${menu_schedule}</a></li>
			<li><a href="board.jsp">${menu_board}</a></li>
		</ul>
	</nav>
</header>