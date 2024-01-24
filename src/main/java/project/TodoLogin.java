package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todologin")
public class TodoLogin extends HttpServlet {
	public static String username ="xyz123";
	public static String name="xyz123";
	public static int a=0;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		username=req.getParameter("username");
		String password=req.getParameter("password");
		
		
		try {
			//create and register JDBC
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//Established connection
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
			
			//create a statement
			PreparedStatement ps=con.prepareStatement("select username,password from user where username = ? and password = ?;");
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			//Execute query
			ResultSet rs = ps.executeQuery();
			
			
			if(rs.next())
			{
				PrintWriter pw = resp.getWriter();
				pw.print("<span style=\"background: rgb(109, 247, 240); color: green; position: absolute; bottom: 50px; left: 650px; \">login successfully</span>");
				//send response.
				
				resp.sendRedirect("name.jsp");
			}
			else
			{
				//set contain type...
				resp.setContentType("text/html");
				
				PrintWriter pw = resp.getWriter();
				pw.print("<span style=\"background: rgb(247, 109, 109); color: red; font-size:25px;  position: absolute; bottom: 120px; left: 650px;\">username and password is incorrect</span>");
				
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				rd.include(req, resp);
			}
	
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		
	}
	

}}
