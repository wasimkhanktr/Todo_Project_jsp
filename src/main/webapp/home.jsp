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
<% try{
String name=TodoLogin.name;
if(name.equals("xyz123")){ %>
		<div class="formh">
		<h1 style="text-align: center;">Welcome to home page</h1>
				<button><a href="./login.jsp">Login</a></button><br>
                <button><a href="./registration.jsp">SingUp</a></button>
		</div>
	
	<%}else{
		%>
		<div class="formh">
		<h1 style="text-align: center;">Welcome to home page</h1>
				<button><a href="./todoDisplay.jsp">view your Todo</a></button><br>
                <button><a href="./todo.jsp">Add todo</a></button>
		</div>
		<div class="username">welcome <%= TodoLogin.name %>
		<button><a href="./logout.jsp">LogOut</a></button></div>
		
		
		<%} }catch(Exception e){}%>
	
		
		<div class="copy">
			<p>2023 copyright @wasimkhanktr</p>
		</div>
		
        
	</div>

</body>
</html>