<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardManager" class="com.daegu_cgv.board.BoardManager" scope="application" />
<jsp:useBean id="boardInfo" class="com.daegu_cgv.board.BoardInfo" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대구 CGV</title>
<link rel="stylesheet" href="css/base.css" media="all" />
<link rel="stylesheet" href="css/board.css" media="all" />
</head>
<body>
	<div id="container">
		<jsp:include page="modules/header.jsp" />
		
		<section>
			<div class="board">
				<h2>&lt;감상평 게시판&gt;</h2>
				
				<table>
					<colgroup>
						<col width="78%">
						<col width="8%">
						<col width="14%">
					</colgroup>
			<%
				if (boardManager.getList().size() > 0) {
					StringBuilder sb = new StringBuilder();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd hh:mm");
					for (int i = 0; i < boardManager.getList().size(); i++) {
						boardInfo = boardManager.get(i);
						sb.append("<tr>");
						sb.append(String.format("    <td class=\"content\">%s</td>", boardInfo.getContent()));
						sb.append(String.format("    <td class=\"writer\">%s</td>", boardInfo.getWriter()));
						sb.append(String.format("    <td class=\"time\">%s</td>", sdf.format(boardInfo.getWriteTime())));
						sb.append("</tr>");
					}
					out.println(sb.toString());
				} else {
					out.println("<tr><td colspan=\"3\" class=\"center\">현재 등록된 감상평이 없습니다.</td></tr>");
				}
			%>
				</table>
				<div class="add_btn">
					<a href="processBoardInfo.jsp?mode=removeAll" class="btn del">전체 삭제</a>
					<a href="writeBoard.jsp" class="btn">글쓰기</a>
				</div>
			</div>
		</section>

		<jsp:include page="modules/footer.jsp" />
	</div>
</body>
</html>