<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%


String a = request.getParameter("hall");
String b= request.getParameter("atd");
String c= request.getParameter("percentage");
String d= request.getParameter("year");

try
{

	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
		st2.executeUpdate("insert into academics values('"+a+"','"+b+"','"+c+"','"+d+"')");	

response.sendRedirect("academicyear.jsp?m=null");
		
}
catch(Exception ee){System.out.println(ee);}
%>

