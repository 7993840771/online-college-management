<%@page import="java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
String o=request.getParameter("id");
System.out.println(o);
PreparedStatement ps = null;
 ResultSet rs = null;
try
{
Connection con = databasecon.getconnection();
ps=con.prepareStatement("update leaveletters set uaccess='Rejected' where lid='"+o+"' ");
ps.executeUpdate();
}
catch(Exception e1)
{
System.out.println(e1.getMessage());
}
response.sendRedirect("leavedetails.jsp?idd=null");
%>

