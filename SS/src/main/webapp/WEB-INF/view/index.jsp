<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%response.sendRedirect("Productform");%> --%>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  .card {
	    background-color:#ffffff;  
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	    transition: 0.3s;
	    width: auto;
	    border-radius: 5px;
	}
  </style>
</head>
<body  style="background-color:#2E2E2E;">
<%@include file="Header.jsp"  %>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value='resource/images/bv1.jpg' />" alt="Chania" width="460" height="345"/>
      </div>

      <div class="item">
        <img src="<c:url value='resource/images/bv2.jpg' />" alt="Chania" width="460" height="345"/>
      </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <div class="card">
  <div class="container">
    <h1><b>Welcome</b></h1>
    <br>
    <h3>Top Offers</h3> 
  </div>
</div>
<%@include file="Footer.jsp"  %>
</body>
</html>
