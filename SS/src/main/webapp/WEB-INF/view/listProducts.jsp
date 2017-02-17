<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
<jsp:include page="Header.jsp"  />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<script>
$(document).ready(function(){
var searchCondition='${searchCondition}';	
$('.table').DataTable({
	"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
    "oSearch":{"sSearch":searchCondition}
})
});
</script>
</head>
<body>

<center>
<div style="color: teal; font-size: 30px"> User Details</div>

  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     <td>Image</td>
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
     <td>category</td>
    <td>Suppliers</td>     
       
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
            <td><c:url var="src" value="/resource/images/${pd.productid }.png"></c:url>
				<img src="${src }"/></td>
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
            <td><a href="editProduct?id=${pd.productid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
      <td><a href="deleteProduct?id=${pd.productid}"><span class="glyphicon glyphicon-remove"></span></a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="ProductForm">add new product</a>
</center>
<jsp:include page="Footer.jsp"  />
</body>
</html>