<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.mytext {
    width: 300px;
    height: 20px;
}
.pwd{
height:20px;
}
.bal{
height:20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Balance</title>
</head>
<jsp:include page="/GetCurrentDetails" />
<body style="background-color:powderblue;">  
<center>
<h2>

Please confirm your card details and balance to be added:
<form action="AddBalance" method="post">
<p class="creditcard"><label for="credit card"> Credit Card Details</label></p></h2>
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		      <h3>   Name on Card*<br></h3>
		           <input id="nameoncard" name="nameoncard" type="text" class="mytext" style="font-size:15pt;" value= <%=request.getAttribute("cardname") %>><br>
		            <h3>Card Number*</h3>		
	 	   			<input id="cardnum" name="cardnum" type="text" class="mytext" style="font-size:15pt;"value=<%=request.getAttribute("cardnum")%>>
	 	   			<h3>Expiry Date<br></h3>
	 	   			<h3>Month&nbsp;&nbsp;&nbsp;					
				    <select name="expmonth" width="300" style="height: 30px"> 
					  <option value="01">01</option>
					  <option value="02">02</option>
					  <option value="03">03</option>
					  <option value="04">04</option>
					  <option value="05">05</option>
					  <option value="06">06</option>
					  <option value="07">07</option>
					  <option value="08">08</option>
					  <option value="09">09</option>
					  <option value="10">10</option>
					  <option value="11">11</option>
					  <option value="12">12</option> 
					</select>&nbsp;&nbsp;&nbsp;
					Year&nbsp;&nbsp;&nbsp;
					<select name="expyear" width="300" style="height: 30px">
					  <option value="2021">2021</option>
					  <option value="2022">2022</option>
					  <option value="2023">2023</option>
					  <option value="2024">2024</option>
					  <option value="2025">2025</option>
					  <option value="2026">2026</option>
					  <option value="2027">2027</option>
					  <option value="2028">2028</option>
					  <option value="2029">2029</option>
					  <option value="2030">2030</option>
					  <option value="2031">2031</option>
					  <option value="2032">2032</option>
					  <option value="2033">2033</option>
					  <option value="2034">2034</option>
					 
					  </select></h3>
					 
	 	   			<h3>Security/CVV Number*</h3>
	 	   			<input id="cvv" name="cvv" tabindex="3" type="password" class="pwd" maxlength="3" required="required">
	 	   			
	 	   			<h3>Balance to be added:</h3>
	 	   			<input id="balance" name="balance" tabindex="4" type="text" class="bal" required="required"></h3>
	 	   			
	 	   			<input type = "submit" value = "Add Balance">
	 	 </form>
</center>
</body>
</html>