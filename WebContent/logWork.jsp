<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%@ page import="p1.DB" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging you in...</title>
</head>
<body>
<%
	String email=request.getParameter("email");
	String pass=request.getParameter("password");
	try
	{
		Connection con=DB.getConnect();
		PreparedStatement ps=con.prepareStatement("select * from USER_DATA where EMAIL=? and PASSWORD=?");
		ps.setString(1,email);
		ps.setString(2,pass);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>

</body>
</html>