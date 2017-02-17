<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<jsp:include page="Header.jsp"  />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Product Form</title>
 </head>
 <body>
 
  <h2>Add Product Data</h2>
  <form:form method="POST" action="./saveProduct" commandName="prdfrm" enctype="multipart/form-data">
      <table>
<!--        <tr> -->
<%--            <td><form:label path="productid">Product ID:</form:label></td> --%>
<%--            <td><form:input path="id" value="${product.productid}" readonly="true"/></td> --%>
<!--        </tr> -->
<form:errors path="*" cssStyle="color:#ff0000" />
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" /> 
           </td>
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
           <td><label for="suppliers">Supplier</label></td>
           <td><c:forEach var="s" items="${suppliers}">
			<form:radiobutton path="suppliers.id" value="${s.id}" />${s.suppliersDetails}
			</c:forEach></td>
       </tr>
       <tr>
          <td><form:label path="image">Product Image:<span class="text-danger">*</span></form:label></td>
           <td><form:input path="image" type="file" /></td>
       </tr>
       
          <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
   </table> 
 
  
   <a type="button" class="btn-success"  href="listProducts">View all products</a>


</form:form>
<jsp:include page="Footer.jsp"  />
 </body>
</html>