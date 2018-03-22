<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf8");
%>
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<jsp:useBean id="movieInfo" class="com.daegu_cgv.movie.MovieInfo" scope="page" />
<jsp:setProperty property="*" name="movieInfo" />
<%
	String mode = request.getParameter("mode");
	
	if (mode.equals("add")) {
		String cover = request.getParameter("cover");
		movieInfo.setCover(cover);
		movieManager.add(movieInfo);
	}
	
	response.sendRedirect("info.jsp");
%>