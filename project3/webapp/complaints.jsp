<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("img_nature.jpg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}


.container {
  position: center;
  
  margin: 20px;
  max-width: 500px;
  padding: 16px;
  background-color: yellow;
}



</style>
<meta charset="ISO-8859-1">
<title>Thank You</title>
</head>
<body style="background-color:powderblue;">  
<center>
<br><br><br>
<h1>Received your complaint</h1>
<form class="container" action="main.html" method="get" >

<h2>
WE ARE SORRY FOR THE INCONVENIENCE CAUSED 

</h2>

<input type="submit" value="GoHome"  style="font-size:20pt;">
</form>
</center>
</body>
</html>