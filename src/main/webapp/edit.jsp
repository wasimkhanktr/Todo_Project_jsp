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
<% String a=request.getParameter("id");
	int id=Integer.parseInt(a);
	String title=request.getParameter("title");
	String description=request.getParameter("description");
	String status=request.getParameter("status");
	String date=request.getParameter("date");
	
	%>
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

        <div class="form2">
           <h2>Edit Todo</h2>
            <form action="updateTodo.jsp">
            
            	<input style="display:none" type="number" name="id" value=<%=id%> >
                <label>Todo Title</label>
                <input type="text" name="title"  value=<%=title%> class="input11" id="">
                <label>Todo Decription</label>
                <input type="text" name="description" value=<%=description %> class="input11" id="">
                <label>Todo Status</label>
                <input type="text" name="status" value=<%=status %> class="input11" id="">
                <label>Todo Target Date</label>
                <input type="date" name="date" value=<%=date %>  class="input12" id="">
                
                <input type="submit" value="save" class="input11" id="submit">
            </form>
        </div>
    
    
    
        
        <div class="copy">
            <p>2023 copyright @wasimkhanktr</p>
        </div>
        <div class="username">welcome <%= TodoLogin.name %>
		<button><a href="logout.jsp">LogOut</a></button></div>
    </div>

</body>
</html>