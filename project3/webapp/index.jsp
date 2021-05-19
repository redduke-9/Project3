<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Login Application</title>  
<link rel="stylesheet" href="style.css">
</head>  
<body style="background-color:powderblue;" background=" C:\Users\Sairam\Downloads\loginlogo.jpg">  
<center>
    <form action="LoginServlet" method="post">  
        <fieldset style="width: 300px">  
            <legend> Login to site </legend>  
            <table>  
                <tr>  
                    <td>User ID</td>  
                    <td><input type="text" name="username" required="required" /></td>  
                </tr>  
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" required="required" /></td>  
                </tr>  
                <tr>  
                    <td><input type="submit" value="Login" /></td>   
                                                  
                </tr>  
            </table>  
        </fieldset>  
 </form>
 </center>
</body>  
</html> 