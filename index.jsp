<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>DUNGREED</title>
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	<jsp:include page="layout/Fake_nav.jsp"></jsp:include>
	<div class="section">
		<table class="main_table" cellspacing="0">
			<caption align="top">DUNGREED</caption>
			<tr>
					<th colspan="2">
						<div id="section_img">
							<img id="stop_img" src="img/dungreed.jpg">
							<img id="move_img" src="img/dungreed_move.gif">
						</div>
					</th>
			</tr>
			<tr>
				<th>개발</th>
				<td>TEAM HORAY</td>
			</tr>
			<tr>
				<th>장르</th>
				<td>로그라이트, 플랫포머, 액션</td>
			</tr>
			<tr>
				<th>엔진</th>
				<td>유니티</td>
			</tr>
			<tr>
				<th>링크</th>
				<td><a id="steam_link" href="https://store.steampowered.com/app/753420/Dungreed/">스팀 상점 페이지</a></td>
			</tr>
		</table>		
	</div>
	<img src="img/dungreed_move.gif" width=200 height=150>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>