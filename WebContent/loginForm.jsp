<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="com.daegu_cgv.resource.message" var="message" />
<fmt:message var="title" key="TITLE_SITE" bundle="${message}" />
<fmt:message var="msg_login_form" key="MSG_LOGIN_FORM" bundle="${message}" />
<fmt:message var="msg_login_id" key="MSG_LOGIN_ID" bundle="${message}" />
<fmt:message var="msg_login_pwd" key="MSG_LOGIN_PWD" bundle="${message}" />
<fmt:message var="btn_login" key="BTN_LOGIN" bundle="${message}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/login.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<form action="processLogin.jsp" method="post">
				<fieldset>
					<legend>${msg_login_form }</legend>
					<p>
						<label>${msg_login_id}</label>
						<input type="text" name="id" placeholder="${msg_login_id}" />
					</p>
					<p>
						<label>${msg_login_pwd}</label>
						<input type="password" name="password" placeholder="${msg_login_pwd}" />
					</p>
					<p class="btn"><input type="submit" value="${btn_login}" /></p>
				</fieldset>
			</form>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>