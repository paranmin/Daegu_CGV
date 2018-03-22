<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieManager" class="com.daegu_cgv.movie.MovieInfoManager" scope="application" />
<jsp:useBean id="movieInfo" class="com.daegu_cgv.movie.MovieInfo" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/schedule.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="schedule">
				<h2>&lt;상영 시간표&gt;</h2>
				<table>
			<%
				if (movieManager.getList().size() > 0) {
					StringBuilder sb = new StringBuilder();
					for (int i = 0; i < movieManager.getList().size(); i++) {
						movieInfo = movieManager.get(i);
						sb.append("<tr>");
						sb.append(String.format("    <th>%s</th>", movieInfo.getTitle()));
						sb.append(String.format("    <td>%s</td>", movieInfo.getSchedule()));
						sb.append("</tr>");
					}
					out.println(sb.toString());
				} else {
					out.println("<tr><th>현재 등록된 상영 영화가 없습니다.</th></tr>");
				}
			%>
				</table>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>