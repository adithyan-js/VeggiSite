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
  <h2>Update User Details</h2>
  <form:form method="POST" action="./updateSignUp" commandName="supfrm">
      <table>
       <tr>
           <td><form:label path="signupid">ID:</form:label></td>
           <td><form:input path="signupid" value="${sign.signupid}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="uname">User Name:</form:label></td>
           <td><form:input path="uname" value="${sign.uname}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="email">Email Id:</form:label></td>
           <td><form:input path="email" value="${sign.email}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="mno">Mobile Number:</form:label></td>
           <td><form:input path="mno" value="${sign.mno}"/></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Update"/></td>
        </tr>
   </table> 
 </form:form>
 
 </body>
</html>