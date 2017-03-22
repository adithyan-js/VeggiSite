<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content=text.html;>
  <title>SignUp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<%-- <script src="<c:url value='/resource/bootstrap/js/bootstrap.min.js'/>"/></script> --%>
  
        
 
 </head>
<body style="background-color:#2E2E2E;">
<%@include file="Header.jsp" %>
<!-- Sign UP Form Begins -->
<br>
<br>
<br>
<br>
<br>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						
						<div class="panel-heading">
							<h3 class="thin text-center">Register A New Account</h3></div>
							<p class="text-center text-muted">If you already have an account <a href="Login">Click here</a> to signin to your account. </p>
							
							<hr>
<div class="panel-body">
							<form:form method="POST" action="./saveuser" commandName="signupForm" id="passwordForm">
								<div class="top-margin">
									<form:label path="uname">UserName</form:label>
									<form:input path="uname"  class="form-control" required="true"/>
									<form:errors path="uname" cssStyle="color: #ff0000;"/>
								</div>
								
								<div class="top-margin">
									<form:label path="email">Email Address <span class="text-danger">*</span></form:label>
									<form:input path="email" type="email" class="form-control" required="true"/>
									${duplicateEmailid }
								</div>
                                <%-- <div class="top-margin">
									<form:label path="mno">Mobile Number</form:label>
									<form:input path="mno" type="number" class="form-control" required="true"/>
									<form:errors path="mno" cssStyle="color: #ff0000;"/>
								</div> --%>
								<div class="row top-margin">
									<div class="col-sm-6">
										<form:label path="password">Password <span class="text-danger">*</span></form:label>
										<form:input path="password" type="password" class="form-control" required="true" autocomplete="off" name="password1" id="password1"/>
										
										 
									</div>
									<div class="col-sm-6">
										<label>Confirm Password <span class="text-danger">*</span></label>
										<input type="password" class="form-control" required="true" name="password2" id="password2" autocomplete="off"/>
										 <div class="row">
<div class="col-sm-12">
<span id="pwmatch" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> Passwords Match
</div>
</div> 
									</div>
								</div>

								<hr>

								<div class="row">
									
									<div class="col-lg-7  text-right">
										<button class="btn btn-danger" type="submit">Register</button>
									</div>
								</div>
							</form:form>
						</div>
					</div>

				</div>
</div>
</div>
		 
<%@include file="Footer.jsp" %>		
</body>
<script>
$("input[type=password]").keyup(function(){
    var ucase = new RegExp("[A-Z]+");
	var lcase = new RegExp("[a-z]+");
	var num = new RegExp("[0-9]+");
	

	
	if($("#password1").val() == $("#password2").val()){
		$("#pwmatch").removeClass("glyphicon-remove");
		$("#pwmatch").addClass("glyphicon-ok");
		$("#pwmatch").css("color","#00A41E");
	}else{
		$("#pwmatch").removeClass("glyphicon-ok");
		$("#pwmatch").addClass("glyphicon-remove");
		$("#pwmatch").css("color","#FF0004");
	}
});
</script> 
</html>