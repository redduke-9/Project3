<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.sub{
width:200px;
height:50px;
font-size: 20px;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Phone Number</title>
</head>
<body style="background-color:powderblue;">  
<center>
<jsp:include page="/GetCurrentDetails" />
<h2> Your current phone number is:</h2>
<h2><%=request.getAttribute("mobile") %></h2>
<form action="UpdatePhoneNumber" method = "post">
<h2> Enter updated phone number</h2>
<form action="UpdateAddressDetails" method = "post">
<input id="phone" name="phone" placeholder="Enter only numbers"  style="font-size:20pt;" type="text" tabindex="13" required="required" maxlength="10"> <br><br>
<input type=submit value="Update Phone" class="sub"></form>
</center>
</body>
</html>