<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>

<title>Header</title>
  
							        <!-- Bootstrap Command -->
										
			<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/bootstrap.min.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/w3.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap/css/header.css'/>"/>
     <script src="<c:url value='/resource/bootstrap/js/jquery-3.1.1.min.js'/>"></script>
 <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>
  <script src="<c:url value='/resource/bootstrap/js/angular.min.js'/>"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resource/mycss/Navbar.css' />" />

<script>
body 
{
    position: relative; 
}
</script>
  
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-default   navbar-fixed-top" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index" ><img class="img-responsive logo" src="<c:url value='/resource/images/try2.png' />" alt="Logo" style="width:100px; height:70px; " /> </a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
         <li><a href="listProducts">Product</a></li>
        <c:if test="${pageContext.request.userPrincipal.name !=null }">
        
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <li><a href="ProductForm">Add Product</a></li>
        
     <%--    <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Raid <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <c:url var="url1" value="productsByCategory?searchCondition=vegetables"></c:url>
			<li><a href="${url1}">Vegetables</a></li>
            <c:url var="url2" value="productsByCategory?searchCondition=fruits"></c:url>
			<li><a href="${url2}">Fruits</a></li>
		
          </ul>
          </li>
         --%>         
          </security:authorize>
        
       </c:if>
       <%-- <li><form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
        </li>  --%>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <security:authorize access="hasRole('ROLE_USER')">
    <li><a href="cart" style="color:white"><span class="glyphicon glyphicon-cart"></span> CART</a></li>
    </security:authorize> 
    
              <c:if test="${pageContext.request.userPrincipal.name ==null }">
      
        <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login" ><span class="glyphicon glyphicon-log-in" ></span> Login</a></li>
        </c:if>
           <c:if test="${pageContext.request.userPrincipal.name !=null }">
           <li class="dropdown">
           <a class="dropdown-toggle" data-toggle="dropdown" href="#">welcome ${pageContext.request.userPrincipal.name }</a>
           <ul class="dropdown-menu">
           <li><a href="">Your Profile</a></li>
           <li><a href="Shipping">Shipping address</a></li>
           </ul>
           </li>
           <li><a href="j_spring_security_logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
           </c:if>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>