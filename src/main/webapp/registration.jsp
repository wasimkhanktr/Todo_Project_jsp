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
                <li><a href="./registration.jsp">Sing up</a></li>
                
            </ul>
        </div>
    
           
            
            
            
            
        <% try{
if(TodoLogin.name.equals("xyz123")){ %>
		<div class="form1">
		<h4 style="color: blue; text-align: center; margin-left: 25px; font-size: 30px; font-family: 'Courier New', Courier, monospace;">Registration</h4>
                <form action="RegisterJsp.jsp">
                    <input type="text" name="name" placeholder="enter your full name" class="input" id=""><br>
                    <input type="email" name="email" placeholder="enter your email id" class="input" id=""><br>
                    <input type="number" name="phone" placeholder="enter your phone number" class="input" id=""><br>
                    <span>Gender :</span> <input type="radio" name="gender"  class="inputGen" value="Male" id="">Male
                    <input type="radio" name="gender" class="inputGen" value="Female" id="">Female<br>
                    <span></span>DOB :<input type="date" name="dob" class="input1" id=""><br>
                    <input type="text" name="username" placeholder="username" class="input" id=""><br>
                    <input type="password" name="password" placeholder="password" class="input" id=""><br>
                    <input type="submit" value="create account" class="input" id="submit">
                </form><br>
                <a style="color: blue; text-align: center;  margin-left: 25px;" href="./login.jsp">Already have an account?</a>
            </div>
	
	<%}else{
		%>
		<div class="form">
			<h1 style="color: blue; text-align: center; margin-left: 25px; font-size: 50px; font-family: 'Courier New', Courier, monospace;">Login Form</h1><br>
			<h3 style="text-align: center; margin-left: 25px; font-size: 30px;">You Are Already Login</h3>
			<br>
			<a style="color: blue; text-align: center; margin-left: 25px; font-size: 30px; "  href="./logout.jsp">Logout</a>
			<a style="color: blue; text-align: center; margin-left: 25px; font-size: 30px; " href="./home.jsp">Continue....</a>
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