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
         <h3>Current Account Balance  <%=session.getAttribute("balance")%><br/></h3>
        <%
        try {
            Connection conn = null;  
	        PreparedStatement pst = null;  
	        ResultSet rs = null; 
	        
	       Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager  
                    .getConnection("jdbc:mysql://localhost:3306/own", "root", "java@123"); 
            
	    pst = conn.prepareStatement("select prodid from prodtype where prodid in (select prodid from auction where active=0)");  
	    rs = pst.executeQuery();
	    if(rs != null)
	    {
	    while(rs.next())
	    {
	    	int Id = rs.getInt(1); %>
	    	<a href="productbid.jsp?Id=<%=Id%>">
	        <img src=GetPhoto?Id=<%=Id%> alt="Mountain View" style="width:304px;height:228px;"
	 onError="loadImage()" onAbort="loadImage()" />
	 </a>

	 <% 
	    }
	    }  else %> No live auctions <%
	    }
	        catch (SQLException e) {
	        	e.printStackTrace();
		  } %>
        <br><br><br>
        <form action="UpdateAccount.jsp" method="get">
                    <input type="submit" value="Update Account Details" />
                    </form>  
       <form action="MyBids" method="get">
                    <input type="submit" value="My Bids" />
                    </form>                               
        </center>
</body>  
</html>