<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("username");
String password=request.getParameter("password");
String select=request.getParameter("select");
//out.println(name+password+select);
if(select.equals("Admin"))
{
	if(name.equals("Admin")&&password.equals("Admin"))
	{
		response.sendRedirect("admin.jsp");
	}
}
else if(select.equals("Warden"))
{
	if(name.equals("Warden")&&password.equals("Warden"))
	{
		response.sendRedirect("Warden.jsp");
	}
}
else 
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
	PreparedStatement ps=con.prepareStatement("select * from shiv where name='"+name+"' and regdno='"+password+"'");
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		session.setAttribute("key",password);
		response.sendRedirect("studnetrequestht.html");
	}
	else
	{
		out.println("Invalid credentials");
	}
}
%>

</body>
</html>