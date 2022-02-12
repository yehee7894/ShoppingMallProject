<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark"> 
	<%-- navbar : 메뉴바 / navbar-expand : 화면크기 / bg-dark : 배경 색 / navbar-brand :부각하고 싶은 메뉴 --%>
		<div class= "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href = "./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	<%!
		String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to Web Market";
	%>
	<div class = "jumbotron">
	<%-- jumbotron : 중요한 콘텐츠를 보여주기 위한 선택적으로 전체 뷰포트로 확장해줄 수 있는 것 / container 내 놓여진 점보트론은 최대 너비를 만들지 못합니다. / &copy : 특수문자 코드 --%>
		<div class = "container">
			<h1 class="display-3">
				<%=greeting %>
			</h1>
		</div>
	</div>
	
	<div class = "container">
		<div class= "text-center">
			<h3>
				<%= tagline %>
			</h3>
		</div>
		<hr>
	</div>
	
	<footer class= "container">
		<p>&copy; WebMarket</p>	
	</footer>
</body>
</html>