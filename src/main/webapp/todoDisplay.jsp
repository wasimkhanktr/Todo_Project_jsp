<%@page import="java.sql.*"%>
<%@page import="project.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="table">
		<h1 style="text-align:center">List of Todos</h1>
		<button><a href="./todo.jsp">Add Todo</a></button><br>
			

<table border="1">
        <tr>
            <th>TITLE</th>
            <th>TARGET DATE</th>
            <th>STATUS</th>
            <th>Action</th>
        </tr>
    

<%
	Connection con=null;
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	String username=TodoLogin.username;
	
	

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	ps=con.prepareStatement("select * from todolist where username =?");
	ps.setString(1, username);
	
	rs=ps.executeQuery();
	
	
	while(rs.next())
	{
		int id=rs.getInt(1);
		String title = rs.getString(2);
		String description=rs.getString(3);
		String status = rs.getString(4);
		String date = rs.getString(5);
		
		%>
		<tr>
            <td><%=title %></td>
            <td><%=date %></td>
            <td><%=status %></td>
            <td>
            <form action="edit.jsp" >
            	<input style="display:none" type="number" name="id" value=<%=id%> >
            	<input style="display:none" type="text" name="title" value=<%=title %> >
            	<input style="display:none" type="text" name="description" value=<%=description %> >
            	<input style="display:none" type="text" name="status" value=<%=status %>>
            	<input style="display:none" type="date" name="date" value=<%=date %> >
            	<input type="submit" value="update" class="f1">
            </form> 
            	
            <form action="delete.jsp">
            	<input style="display:none" type="number" name="id" value=<%=id%> >
            	<input type="submit" value="delete" class="f2">
            </form>  </td>
            
        </tr>
        
		<%

	}
}
catch(Exception e)
{
	
}


%>
</table>
		</div>
		
		<div class="copy">
			<p>2023 copyright @wasimkhanktr</p>
		</div>
		
        <div class="username">welcome <%= TodoLogin.name %>
		<button><a href="./logout.jsp">LogOut</a></button></div>
	</div>




</body>
</html>