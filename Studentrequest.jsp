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
<body >
<%
String regdno=request.getParameter("regdno");
String place=request.getParameter("place");
String outdate=request.getParameter("outdate");
String indate=request.getParameter("indate");
String outtime=request.getParameter("outtime");
//String intime=request.getParameter("intime");
String localout=request.getParameter("localout");
String description =request.getParameter("description");
String no="pending";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
PreparedStatement ps=con.prepareStatement("insert into request_outong values('"+regdno+"','"+place+"','"+outdate+"','"+indate+"','"+outtime+"','"+localout+"','"+description+"','"+no+"','"+no+"','"+no+"')");
int i=ps.executeUpdate();
if(i>0)
{
	out.println("request submitted");
}
%>


</body>
</html>




