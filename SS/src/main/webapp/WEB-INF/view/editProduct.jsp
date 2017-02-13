<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring MVC Form Handling</title>
 </head>
 <body>
  <h2>Add Product Data</h2>
  <form:form method="POST" action="./updateProduct" commandName="prdfrm">
      <table>
       <tr>
           <td><form:label path="productid">Product ID:</form:label></td>
           <td><form:input path="productid" value="${prod.productid}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" value="${prod.name}"/></td>
       </tr>
       <tr>
           <td><form:label path="description">Product Description:</form:label></td>
           <td><form:input path="description" value="${prod.description}"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Product price:</form:label></td>
           <td><form:input path="price" value="${prod.price}"/></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Update"/></td>
        </tr>
   </table> 
 </form:form>
 
 </body>
</html>