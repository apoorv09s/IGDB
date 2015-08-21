<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="p1.DB" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Processing your ratings...</title>
</head>
<body>
<%
  String pagex=request.getParameter("page");
  double rated=Double.parseDouble(request.getParameter("rate"));
  int y=Integer.parseInt(request.getParameter("star"));
  rated=(rated+y)/2;
  Connection con=DB.getConnect();
  PreparedStatement ps=con.prepareStatement("update RATING set RATE=? where NAME=?");
  ps.setDouble(1,rated);
  ps.setString(2,pagex);
  int i=ps.executeUpdate();
  con.close();
  if(i>0)
  {
	  RequestDispatcher rd=request.getRequestDispatcher("post1.jsp?pageID="+pagex);
	  rd.include(request, response);	
  }  
%>
</body>
</html>