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

<%
Connection con=null;
Statement st=null;
ResultSet rs=null;
int id=0;

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	st=con.createStatement();
	rs=st.executeQuery("select id from todolist;");
	
	while(rs.next())
	{
		id=rs.getInt(1);
	}
	
	TodoLogin.a=id+1;
}
catch(Exception e)
{
	
}

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
            <h2>Add New Todo</h2>
            <form action="JspTodo.jsp">
                <label>Todo Title</label>
                <input type="text" name="title" placeholder="Enter Todo Title" class="input11" id="">
                <label>Todo Decription</label>
                <input type="text" name="description" placeholder="Enter Todo Decription" class="input11" id="">
                <label>Todo Status</label>
                <input type="text" name="status" placeholder="Enter Todo Status" class="input11" id="">
                <label>Todo Target Date</label>
                <input type="date" name="date" placeholder="Enter Todo Target Date" class="input12" id="">
                <input type="submit" value="save" class="input11" id="submit">
            </form>
        </div>
    
    <div class="username">welcome <%= TodoLogin.name %>
		<button><a href="./logout.jsp">LogOut</a></button></div>
    
    
        
        <div class="copy">
            <p>2023 copyright @wasimkhanktr</p>
        </div>
        
    </div>
</body>
</html>