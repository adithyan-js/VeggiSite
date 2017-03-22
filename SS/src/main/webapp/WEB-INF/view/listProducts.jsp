<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<script type="javascript/text"  src="<c:url value='/resource/js/controller.js' />" ></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"> 
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>

 <script type="text/javascript">
 $(document).ready(function(){
		var searchCondition='${searchCondition}';
		$('#myTable').dataTable({
			"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
			"oSearch":{"sSearch":searchCondition}
		
		})
	});
</script>

<%-- <link rel="stylesheet" type="text/css" href="/Datatables/datatables.css">
<script src="<c:url value='/resource/bootstrap/js/jquery-3.1.1.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/cs/jquery.datatables.min.css">
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.datatables.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
var searchCondition='${searchCondition}';	
$('#Mytable').dataTable({
	"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
    "oSearch":{"sSearch":searchCondition}
})
});
</script>
 --%></head>
<body style="background-color:#2E2E2E;">
<%@include file="Header.jsp" %>
<div  ng-app="app"  ng-controller="ProductController">
<center>
<div style="color: teal; font-size: 30px"> Product Details</div>

  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px" id="myTable">
   <thead>
    <tr style="background-color: teal; color: white; text-align: center;" height="40px">
     <td>Image</td>
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
     <td>category</td>
    <td>Suppliers</td>     
       
     <security:authorize access="hasRole('ROLE_ADMIN')">
     <td>Edit</td>
     <td>Delete</td>
    </security:authorize>
    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')"> 
     <td>Product Info</td>
     </security:authorize>
    </tr></thead>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
            <td><c:url var="src" value="/resource/images/${pd.productid }.png"></c:url>
				<img src="${src }" style="width:100px;height:100px;"/></td>
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><c:out value="${pd.category}" />
      </td>
      <td><c:out value="${pd.suppliers}" />
      </td>
                <security:authorize access="hasRole('ROLE_ADMIN')">
            <td><a href="editProduct?id=${pd.productid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
      <td><a href="deleteProduct?id=${pd.productid}"><span class="glyphicon glyphicon-remove"></span></a></td>
      			<%-- <td><a href="" ng-click="addToCart(${pd.productid })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td> --%>
     </security:authorize>
     <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
      <td><a href="viewProducts/${pd.productid}" ><span class="glyphicon glyphicon-info-sign"></span></a></td>
     </security:authorize>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <security:authorize access="hasRole('ROLE_ADMIN')">
  <a href="ProductForm">add new product</a>
  </security:authorize>
</center>
<br>
<br>
<%@include file="Footer.jsp" %>
</div>
</body>
</html>