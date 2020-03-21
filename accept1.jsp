<%@page import="java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%
String o=request.getParameter("id");
String usr=(String)session.getAttribute("name");
PreparedStatement ps = null;
 ResultSet rs = null;
 int count=0;
  int days=0;
 String user="";
try
{

Connection con = databasecon.getconnection();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
st1.executeUpdate("update leaveletters set uaccess='Accepted' where lid='"+o+"' ");
/*st3.executeUpdate("update faculty22 set fstatus='accepted' where fname='"+usr+"'");
 rs=st1.executeQuery("select * from  leaveletters where lid='"+o+"' ");

if(rs.next())
{
	user=rs.getString("userid");
	days=Integer.parseInt(rs.getString("days"));
ResultSet rs2=st1.executeQuery("select * from  leaves where userid='"+user+"' ");
if(rs2.next())
{
	count=rs2.getInt(2);
	count=count-days;

	st2.executeUpdate("update leaves set leaves="+count+"  where userid='"+user+"'");

}}*/}
catch(Exception e1)
{
System.out.println(e1.getMessage());
}
response.sendRedirect("leavedetails.jsp?id=null");
%>

