

<html>
<head>
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .card {
	    background-color:#ffffff;  
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	    transition: 0.3s;
	    width: auto;
	    border-radius: 5px;
	}
	</style>
</head>
<body style="background-color:#2E2E2E;">
<%@ include file="Header.jsp" %>
 <div class="card">
  <div class="container">
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<a href="" class="btn btn-danger pull-left" ng-click="clearCart()">
<span class="glyphicon glphyicon-remove-sign"></span>
ClearCart
</a>
<a href="" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span>Checkout</a>
<table class="table table-striped">
<thead>
<tr><th>NAME</th><th>QUANTITY</th><th>TOTAL PRICE</th><th>REMOVE</th>
</tr>
</thead>



<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="btn btn-danger pull-left" ng-click="removeFromCart(cartItem.id)"><!-- <span class="glyphicon glyphicon-remove"> --></span>Remove
</a></td>
</tr>


</table>
Total Price:{{calculateGrandTotal()}}
</div></div>
</div>
</div>
<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>

</body>
</html>
