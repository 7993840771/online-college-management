<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String pass=null,uid=null;

String a = request.getParameter("name");
String b= request.getParameter("pass");
String name=null,u=null,test2=null;



try
{
if(a.equals("admin")&&b.equals("admin"))
{
	response.sendRedirect("adminhome.jsp");
	}

	else
	{
     	response.sendRedirect("admin.jsp?msgg=null");
	}


}
catch(Exception e1)
{
out.println(e1);
}

%>