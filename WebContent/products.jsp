<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRespository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>상품목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron"> 
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%>
				<div class="col-md-4">
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription() %>
					<p><%=product.getUnitPrice() %>원
					<p><a href="./product.jsp?id=<%=product.getPid() %>" class="btn btn-secondary" role="button">상세정보</a>
					
				</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>