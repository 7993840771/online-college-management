 <%@page import="java.sql.*" %>		 
		 <%
		  Connection con=null;
		  int rs=0;
			PreparedStatement ps=null;
			String rollno=request.getParameter("rollno");
		  try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
		}
		catch(Exception e)
		{
			System.out.println(" database error:"+e);
		}
		  ps=con.prepareStatement("delete from student where hall=?");
		  ps.setString(1,rollno);
		  rs=ps.executeUpdate();
		 if(rs!=0)
				response.sendRedirect("studentdetails.jsp?del=null");
			else
				response.sendRedirect("studentdetails.jsp?dell=null");
			  	  
		  %>