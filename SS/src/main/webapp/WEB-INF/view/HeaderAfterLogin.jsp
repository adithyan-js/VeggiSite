<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resource/mycss/Navbar.css'/>"/>
<link rel="stylesheet" href="<c:url value='/resource/mycss/Login.css'/>"/>
</head>
<body>
<nav class="navbar navbar-default" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" class="active" href="index">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Raid <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
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
                    <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" href="#"><span class="glyphicon glyphicon-user"></span>Welcome,User</a>

                    <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Account Details</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                        </ul>
                    </li>


                    <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>  Logout</a></li>

                </ul>
    </div>
  </div>
</nav>
		  
</body>
</html>