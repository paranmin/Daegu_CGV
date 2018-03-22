<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<jsp:useBean id="movieInfo" class="com.daegu_cgv.movie.MovieInfo" scope="page" />

<div class="movieList">
<%
	if (movieManager.getList().size() > 0) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < movieManager.getList().size(); i++) {
			movieInfo = movieManager.get(i);
			sb.append("<div class=\"movieItem\">");
			sb.append(String.format("    <a href=\"viewMovieInfo.jsp?idx=%s\">", i));
			sb.append(String.format("        <img src=\"images/%s\" alt=\"%2$s\" title=\"%2$s\" />", movieInfo.getCover(), movieInfo.getTitle()));
			sb.append(String.format("        <span class=\"title\">%s</span>", movieInfo.getTitle()));
			sb.append("    </a>");
			sb.append("</div>");
		}
		out.println(sb.toString());
	}
%>
</div>
