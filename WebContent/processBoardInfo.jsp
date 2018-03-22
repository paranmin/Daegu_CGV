<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf8");
%>
<jsp:useBean id="boardManager" class="com.daegu_cgv.board.BoardManager" scope="application" />
<jsp:useBean id="boardInfo" class="com.daegu_cgv.board.BoardInfo" scope="page" />
<jsp:setProperty property="*" name="boardInfo" />
<%
	String mode = request.getParameter("mode");
	
	if (mode.equals("add")) {
		boardInfo.setWriteTime(new Date());
		boardManager.add(boardInfo);
	} else if (mode.equals("delete")) {
		String idx = request.getParameter("idx");
		if (!idx.equals("")) {
			boardManager.remove(Integer.parseInt(idx));
		}
	} else if (mode.equals("removeAll")) {
		boardManager.removeAll();
	}
	
	response.sendRedirect("board.jsp");
%>