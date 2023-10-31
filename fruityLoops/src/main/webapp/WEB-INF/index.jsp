<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- New line below to use the JSP Standard function Library -->
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home fruits</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css" />
</head>
<body>

	<div class="container-fluid px-5">
		<h1 class="text-center text-primary" style="padding-top: 100px;">
			Fruit Store</h1>
		<table class="table table-striped border border-5">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="elt" items="${fruitsFromMyController}">
					<tr>
						<td <c:if test="${fn:startsWith(elt.name, 'G')}">style="color: orange"</c:if>><c:out value="${elt.name}" /></td>
						<td><c:out value="${elt.price}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- link Js -->
	<script type="text/javascript" src="/js/time.js"></script>
	<!-- For any Bootstrap that uses jquery -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<!--For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
