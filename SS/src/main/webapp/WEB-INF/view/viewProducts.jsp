<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>View Products</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.card {
	    background-color:#ffffff;  
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	    transition: 0.3s;
	    width: 50%;
	    border-radius: 5px;
	}
	</style>
</head>
<body style="background-color:#2E2E2E;" ng-app="myApp">
	<%@include file="Header.jsp" %>
	<br>
	<br>
	<br>
	<div class="card vertical-center"> 
	<div align="center">
		<div class="w3-container" ng-controller="ProductController" >
		<h3>${product.name}</h3>
		<div class="w3-card-12" style="width:50%;height:50%" >
		<p align="center"><c:url var="src" value="/resource/images/${pd.productid }.png"></c:url>
				<img src="${src }" style="width:100px;height:100px;" /></p>
			<div class="w3-container w3-center">
			<p>
			Rs.${product.price}/-</p>
			<hr>
			<p>${product.description}
			
			</p>
			<security:authorize access="hasRole('ROLE_USER')"> <p>Add To Cart </p><p><a href="" ng-click="addToCart(${product.productid })"><span class="glyphicon glyphicon-shopping-cart"></span></a></p></security:authorize>
		</div>
		</div>
		
		</div></div>
		</div>		
				
				<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>
<%@include file="Footer.jsp" %>
</body>
</html>