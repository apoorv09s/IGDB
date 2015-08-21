<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.DB" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Processing Registration...</title>
</head>
<body>
<%
	String name=request.getParameter("fname")+" "+request.getParameter("lname");
	String email=request.getParameter("email");
	String uname=request.getParameter("uname");
	String upass=request.getParameter("pswd");
	String country=request.getParameter("country");
	String gen=request.getParameter("gender");	
	SimpleDateFormat fir=new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
	java.util.Date d=new java.util.Date();
	String dor=fir.format(d);
	try
	{
		Connection con=DB.getConnect();
		String sql="insert into USER_DATA values(?,?,?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		
		pst.setString(1,email);
		pst.setString(2,name);		
		pst.setString(3,upass);
		pst.setString(4,gen);
		pst.setString(5,country);
		pst.setString(6,dor);
		//pst.setString(7,uname);
		
		int x=pst.executeUpdate();
		if(x>0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");
			rd.include(request, response);	
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Error1.jsp");
			rd.include(request, response);
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("ERROR HAS OCCURRED");
	}
%>
</body>
</html>