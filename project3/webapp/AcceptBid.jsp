<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 input[type=submit]{
  background-color: 	#000000;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  font-size: 28px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accept or Decline Bid</title>
</head>
<body style="background-color:powderblue;" background="C:\Users\Sairam\OneDrive\Pictures\yes no.jpg">  
<center>
<form action="UpdateAddress.jsp" >
                        	<input type="submit" name="accept" value="Accept" />
                        	<input type="hidden" name="auctionid" value=<%=request.getParameter("auctionid") %>>
                   </form>
<br/>
<form action="ProcessWinner" method="post">
                        	<input type="submit" name="decline" value="Decline" />
                        	<input type="hidden" name="auctionid" value=<%=request.getParameter("auctionid") %>>
                   </form>
                   
</center>
</body>
</html>