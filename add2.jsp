<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null;

String a = request.getParameter("name");
String b= request.getParameter("des");
String c= request.getParameter("qua");
String d= request.getParameter("con");
String e= request.getParameter("email");
String f= request.getParameter("username");
String g= request.getParameter("pwd");
String h= request.getParameter("year");
String i= request.getParameter("sem");
//String set= request.getParameter("set");


String name=null,u=null,test2=null;




try
{

	Connection con1 = databasecon.getconnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = " insert into faculty(fname,fdes,fq,fno,femail,funame,fpwd,year,sem,fset) value('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','A') ";
	st1.executeUpdate(sss1);
		response.sendRedirect("reg.jsp?m=null");
}
catch(Exception ee){System.out.println(ee);}
%>


