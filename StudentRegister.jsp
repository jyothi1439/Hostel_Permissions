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
String name = request.getParameter("name");
String regdno = request.getParameter("regdno");
String fname = request.getParameter("fathername");
String address = request.getParameter("address");
String studentphno = request.getParameter("studentphno");
String parentphno = request.getParameter("parentphno");
String gender = request.getParameter("sex");
String course = request.getParameter("course");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
PreparedStatement ps=con.prepareStatement("insert into shiv values('"+name+"','"+regdno+"','"+fname+"','"+address+"','"+studentphno+"','"+parentphno+"','"+gender+"','"+course+"')");
int x=ps.executeUpdate();
if(x>0)
{
	out.println("Success");
}
else
{
	out.println("Failure");
}
%>

</body>
</html>