<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>"/>
   <script src="<c:url value='/resource/js/bootstrap.min.js'/>"></script>
   <style>
   .card {
	    background-color:#ffffff;  
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	    transition: 0.3s;
	    width: auto;
	    border-radius: 5px;
	}
</style>
</head>
<body style="background-color:#2E2E2E;">
<jsp:include page="Header.jsp"/>
    <div class="card">
  <div class="container">
<h3>About Us</h3>
<p> This site is majorly focusing on bringing a standard market for fruits and vegetables where customers can order online and their order will be processed and delivered by our representatives.</p>
<p>This site is managed efficiently with about 300 employess working to achive our targets everyday. We offer you the best of services and the best of offers to make sure we satisfy your needs.</p>
</div>
</div>
<img src="<c:url value='resource/images/ty.jpg' />" class="img-responsive center-block" style=align:center;width:20%;height:40%;/>

<jsp:include page="Footer.jsp"  />
</body>
</html>