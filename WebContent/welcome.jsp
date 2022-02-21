<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market";%>
	<div class="jumbotron">
		<%-- jumbotron : 중요한 콘텐츠를 보여주기 위한 선택적으로 전체 뷰포트로 확장해줄 수 있는 것 / container 내 놓여진 점보트론은 최대 너비를 만들지 못합니다. / &copy : 특수문자 코드 --%>
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>

	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
				Date day = new java.util.Date();
				String am_pm;
				
				int hour = day.getHours();
				int min = day.getMinutes();
				int sec = day.getSeconds();
				
				if(hour <= 12){
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour-12;
				}
				String CT = hour + "시 " + min + "분 " + sec + "초 " + am_pm;
				out.println("현재 접속 시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>