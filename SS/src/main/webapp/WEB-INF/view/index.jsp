<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Index</title>
   <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>"/>
</head>
<body style="background-color:#141415;">

<jsp:include page="Header.jsp"  />
  
<div class="container">
  <h3>Collapsible Navbar</h3>
  <p>In this example, the navigation bar is hidden on small screens and replaced by a button in the top right corner (try to re-size this window).
  <p>Only when the button is clicked, the navigation bar will be displayed.</p>
</div>
<jsp:include page="Footer.jsp"  />
</body>
</html>
