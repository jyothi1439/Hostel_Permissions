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
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#f1f1f1">
<nav class="navbar navbar-expand-sm bg-dark justify-content-center">
<div class="navbar-brand" >
         <img id="brand-image" src="E:\Outing\vishnulogo.png"  alt="Avatar" length="140" height="140">
         </div>
<div >
<h2 class="text-white">Shi Vishnu Engineering College For Women</h2>
</div>


</nav>
</head>
<body>
	

<nav>
<ul class="navbar-nav navbar-expand-sm bg-info justify-content-center">
<div class="row" style="width:100%;">
<div class="col"><li class="nav-item "><a class="nav-link text-white" href="admin.jsp">View Requests</a></li></div>
<div class="col">
<LI class="nav-item"><a class="nav-link text-white" href="register.html">Add Students</a></LI></div>

</nav>
 <form action="#" name="StudentReson for Outing">
    <table cellpadding="2" width="40%" align="center" cellspacing="2" class="table-bordered">
    <thead>
    <th>Regdno</th>
    <th>place</th>
    <th>outdate</th>
    <th>indate</th>
    <th>outtime</th>
    <th>purpose</th>
    <th>status</th>
    </thead>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
PreparedStatement ps=con.prepareStatement("select * from request_outong where adminapp='pending' ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{%>
<tr>
<td><%=rs.getString("regdno") %></td>
<td><%=rs.getString("place") %></td>
<td><%=rs.getString("outdate") %></td>
<td><%=rs.getString("indate") %></td>
<td><%=rs.getString("outtime") %></td>
<td><%=rs.getString("description") %></td>
 
    <!-- <td><select name="status">
    <option value="-1" selected>select..</option>
    <option value="yes">yes</option>
    <option value="no">no</option>
    
    </select></td> -->
    <!-- <td><input type="submit" value="submit" ></td>
 -->

<td><a href="accept.jsp?rid=<%=rs.getString("regdno") %>">Accept</a><a href="reject.jsp?rid=<%=rs.getString("regdno") %>">Reject</a></td>


</tr>


<%
} 
%>

</table>

</form>





</body>
</html>