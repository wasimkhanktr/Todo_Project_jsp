<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="project.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>TodoAppWk</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="icon" href="./wkLogo.png">
</head>
<body>






<div class="main">
	
		<div class="nav">
        
        
            <ul type="none" >
                <span><a href="./home.jsp"><img src="./wkLogo.png" height="50px" alt="">Todo App</a></span>
                <li><a href="./home.jsp">Home</a></li>
                <li><a href="">About</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="">Service</a></li>
                <li><a href="./login.jsp">Login</a></li>
                <li><a href="./registration.jsp">SingUp</a></li>
                
            </ul>
        </div>
        
      

		<div class="formf">
			<h1 style="color: blue; text-align: center; margin-left: 25px; font-size: 50px; font-family: 'Courier New', Courier, monospace;">Forgot Password</h1>
			<form action="JspPassword.jsp">
				<input type="text" name="username" placeholder="username" id="" value="username" class="input1"><br>
				<input type="password" name="password1" placeholder="new password" id=""  class="input1">
				<input type="password" name="password2" placeholder="confirm password" id=""  class="input1"><br>
				<input type="submit" value="submit" id="submit" class="input">

			</form>
			
		</div>
	
	
		
		
		
        
        
        
        
        
        
		
	
	
	
		
		<div class="copy">
			<p>2023 copyright @wasimkhanktr</p>
		</div>
	</div>

</body>
</html>