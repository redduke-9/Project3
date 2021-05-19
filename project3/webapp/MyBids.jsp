<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 table {
        border-collapse: separate;
        border-spacing: 0 15px;
      }
      th {
        background-color: #4287f5;
        color: white;
      }
      th,
      td {
        width: 100px;
        text-align: center;
        border: 1px solid black;
        padding: 5px;
      }
     
   
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Bids</title>
</head>
<body style="background-color:powderblue;" background=" C:\Users\Sairam\OneDrive\Pictures\mybids.jpg" >  

<h1> My Bids </h1>
<h3>
<% ArrayList<Integer> auctionid = (ArrayList<Integer>) request.getAttribute("auctionid");
ArrayList<Integer> prodid = (ArrayList<Integer>) request.getAttribute("prodid");
ArrayList<Float> bidvalue = (ArrayList<Float>) request.getAttribute("bidvalue");
ArrayList<String> name = (ArrayList<String>) request.getAttribute("name");
ArrayList<Integer> flag = (ArrayList<Integer>) request.getAttribute("flag");
int i = 0;
int length = auctionid.size(); %>
<table>
                <thead>
                    <tr>
                        <th>Auction ID</th>
                        
                        <th>Product ID</th>
                        
                        <th>Bid Value</th>
                        
                        <th>Product Name</th>
           			</tr>
                </thead>
                <tbody>
             <% 
			 for(i = 0;i<length;i++) {%>   
                    <tr>
                        <td><%=auctionid.get(i)%></td>
                        <td><%=prodid.get(i)%></td>
                        <td><%=bidvalue.get(i) %></td>
                        <td><%=name.get(i) %></td>  
                        <td><% if (flag.get(i)==1){%>
                        	<form action="AcceptBid.jsp" method="get">
                        	<input type="submit" name="winner" value="Winner" />
                        	<input type="hidden" name="auctionid" value=<%=auctionid.get(i)%>>
                   </form><%} %> </td>  
                    <input type="hidden" name="auctionid" value="<%=auctionid.get(i)%>" />
                   <input type="hidden" name="prodid" value="<%=prodid.get(i)%>" />
                   <input type="hidden" name="name" value="<%=name.get(i)%>" />
                   <input type="hidden" name="bidvalue" value="<%=bidvalue.get(i)%>" />                 
                    </tr>
                    <%} %>
                    
                </tbody>
            </table>
            </h3>
</body>
</html>