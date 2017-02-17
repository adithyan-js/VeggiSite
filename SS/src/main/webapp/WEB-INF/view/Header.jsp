<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="<c:url value='/resource/js/bootstrap.min.js'/>"></script>
  <link rel="stylesheet" href="<c:url value='/resource/mycss/Navbar.css' />" />
  <link rel="stylesheet" href="<c:url value='/resource/mycss/Login.css' />" />
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      
<script>
body {
    position: relative; 
}
</script>
  
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="60" >
<nav class="navbar navbar-default  navbar-fixed-top " >
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
        <li><a href="ProductForm">Add Product</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Raid <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <c:url var="url1" value="productsByCategory?searchCondition=vegetables"></c:url>
			<li><a href="${url1}">Vegetables</a></li>
            <c:url var="url2" value="productsByCategory?searchCondition=fruits"></c:url>
			<li><a href="${url2}">Fruits</a></li>
			
          </ul>
          <li><form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
        </li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="SignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login" ><span class="glyphicon glyphicon-log-in" ></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>