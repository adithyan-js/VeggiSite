<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup List</title>
</head>
<body>
<center>
<div style="color: teal; font-size: 30px"> User Details</div>

  <c:if test="${!empty signupList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td> Id</td>
     <td>User Name</td>
   <td>EmailId</td>
   <td>Mobile Number</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${signupList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.signupid}" />
      </td>
      <td><c:out value="${pd.uname}" />
      </td>
      <td><c:out value="${pd.email}" />
      </td>
      <td><c:out value="${pd.mno}" />
      </td>
     <%--  <td><a href="editProduct?id=${pd.productid}">Edit</a></td> --%>
      <td><a href="deleteSignUp?id=${pd.signupid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
</center>
</body>
</html>