<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Product Form</title>
 </head>
 <body>
  <h2>Add Product Data</h2>
  <form:form method="POST" action="./saveProduct" commandName="prdfrm">
      <table>
<!--        <tr> -->
<%--            <td><form:label path="productid">Product ID:</form:label></td> --%>
<%--            <td><form:input path="id" value="${product.productid}" readonly="true"/></td> --%>
<!--        </tr> -->
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" /></td>
       </tr>
       <tr>
           <td><form:label path="description">Product Description:</form:label></td>
           <td><form:input path="description"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Product price:</form:label></td>
           <td><form:input path="price" /></td>
       </tr>
        <tr>
           <td><label for="category">Category</label></td>
           <td><c:forEach var="c" items="${categories}">
			<form:radiobutton path="category.id" value="${c.id}" />${c.categoryDetails}
			</c:forEach></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
   </table> 
 
  
   <a type="button" class="btn-success"  href="listProducts">View all products</a>

  <%-- <center>
<div style="color: teal; font-size: 30px">User Details</div>

  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
   
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><a href="edit?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="ProductForm">add new product</a>
</center> --%>
</form:form>
 </body>
</html>