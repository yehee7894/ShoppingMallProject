<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRespository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
		<div class="jumbotron"> 
			<div class="container">
				<h1 class="display-3">상품 정보</h1>
			</div>
		</div>
		
		<% 
			String id = request.getParameter("id");
			Product product = productDAO.getProductById(id);
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription() %>
					<p> <b>상품 코드 : </b><span class="badge badge-danger"><%=product.getPid() %></span>
					<p> <b>제조사</b>:<%=product.getManufacturer()%>
					<p> <b>분류</b>:<%=product.getCategory()%>
					<p> <b>재고 수</b>:<%=product.getUnitsInStock()%>
					<h4><%=product.getUnitPrice() %>원</h4>
					<p><a href="#" class="btn btn-info"> 상품 주문 </a><a href="./products.jsp" class="btn btn-secondary"> 상품 목록 </a>
				</div>
			</div>
		</div>		
		
		<jsp:include page="footer.jsp" />
</body>
</html>