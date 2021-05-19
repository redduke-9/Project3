<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1" import="java.io.*" import="java.sql.*" %>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Welcome <%=session.getAttribute("name")%></title>  
</head>  
<body style="background-color:powderblue;">  
<center>
    <h2>Login successful!!!</h2>  
    <h2>  
        Hello,  
        <%=session.getAttribute("name")%></h2> 
        
       

<br> </br>
<form action="CreateAuction.jsp" method="get">
                   <input type="submit"  style="font-size:20pt;"value="Create Auction" />
                   </form> 
<form action="UpdateAccount.jsp" method="get">
                   <input type="submit"  style="font-size:20pt;"value="Update Account Details" />
                   </form>  
      <form action="MyAuctions" method="get">
                   <input type="submit"  style="font-size:20pt;"value="My Auction" />
                   </form>      
        </center>
</body>  
</html>