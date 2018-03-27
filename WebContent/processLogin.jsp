<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	
	if (id.equals(pwd)) {
		session.setAttribute("loginId", id);
	}
	response.sendRedirect("main.jsp");
%>