<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

 
   <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
 <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(function()
		{
	  $("#cicon").hide();
	  var icon=false;
	  $("#cicon").focusout(function()
			  {
		  check_retype_password();
			  });
		});
		
function check_retype_password()
{
	var password=$("#password").val();
	var repassword=$("#repassword").val();
	if(password!=repassword)
		{
		$("#cicon").html("glyphicon glyphicon-remove");
		$("#cicon").show();
		cicon=true;
		}
	else
		{
		$("#cicon").hide();
		$("#cicon").html("glyphicon glyphicon-ok");
		$("#cicon").show();
		cicon=false;
		}
	}
</script>
</head>
<body style="background-color:#141415;">
<jsp:include page="Header.jsp"  />
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<div class="panel panel-info">
<div class="panel-heading">
 <h2 class="text-center">Sign Up</h2>
</div>
<hr>
<div class="panel-body">
<form:form method="POST" action="./saveSignUp" commandName="supfrm">
<div class="top-margin">
<form:label path="uname">User Name</form:label>
<form:input type="text" path="uname" class="form-control" required="true" />
</div>
<div class="top-margin">
<form:label path="email">EmailId</form:label>
<form:input type="email" class="form-control" path="email" required="true" />
</div>
<div class="top-margin">
<form:label path="mno">Mobile Number</form:label>
<form:input type="text" class="form-control" path="mno" required="true"  />
</div>
<div class="row top-margin">
<div class="col-sm-6">
<form:label path="password">Enter Password</form:label>
<form:input type="password" class="form-control"  path="password" name="password" required="true" id="passwword"/><span class="error_form" id="cicon"></span></div>
<div class="col-sm-6">
<label>Re-Enter Password</label>
<input type="password" class="form-control" name="repassword" required="true" id="repasswword" /><span class="error_form" id="cicon"></span></div>
</div>
<div class="row">
<div class="col-lg-7 text-left">
<button class="btn btn-info" type="submit">SignUp</button>
</div>
<div class="col-sm-5" align="right">
<a href="Login" >Already have an account?</a>
</div>
</div>
</form:form>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="Footer.jsp"  />
</body>
</html>