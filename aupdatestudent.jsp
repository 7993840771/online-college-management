<%-- 
    Document   : ws
    Created on : Jul 2, 2016, 7:57:14 PM
    Author     : java4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
     <style> 

.inputs {
    background: #fff;
    font-size: 0.8rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 10px 10px;
    width: 200px;
    margin-bottom: 20px;
    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
    clear: both;
}

.inputs:focus {
    background: #fff;
    box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
    outline: none;
}
.inputss {
    background: #f5f5f5;
    font-size: 0.8rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 10px 10px;
    width: 200px;
    margin-bottom: 20px;
    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
    clear: both;
}

.inputss:focus {
    background: #fff;
    box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
    outline: none;
}
.button {
    background-color: #0096da; /* Green */
    border: none;
    color: white;
    padding: 10px 23px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>
<head>
<title>Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
               
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
          <br><h2>Vijaya Engineering College</h2>
      </div>
      <div class="clr"></div>
     
       
     <%@include file="aheader.jsp"%>
     <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><br /></a>
                               <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><br /></a> 
                               <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><br /></a> 
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
		  <h2><span>Student Details</span></h2><br>
			<div class="clr"></div>
			<%
if(request.getParameter("del")!=null)
				 
{
					
  out.println("<script>alert('Deleted Successfully...!')</script>");
				  
}

if(request.getParameter("dell")!=null)
				 
{
					
  out.println("<script>alert('Failed To Delete...!')</script>");
				  
}


%>
		  <%@page import="java.sql.*" %>		 
		 <%
		  Connection con=null;
		  ResultSet rs=null;
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
		  ps=con.prepareStatement("select * from student where hall=?");
		  ps.setString(1,rollno);
		  rs=ps.executeQuery();
		  
			  	  
		  %>
          
        <%
		if(rs.next()){
		%>  
<form action="updateaction.jsp">		
        <table  cellspacing="5">
		<tr><td width="120"><h3>Roll NO</td><td><input type="text" name="rno" value="<%=rs.getString(1)%>" readonly></td>
		<tr><td><h3>Name</td><td><input type="text" name="name" value="<%=rs.getString(4)%>"></td>
		<tr><td><h3>Branch</td><td><input type="text" name="branch" value="<%=rs.getString(3)%>"></td>
		<tr><td><h3>Email</td><td><input type="text" name="email" value="<%=rs.getString(7)%>"></td>
		<tr><td><h3>Mobile</td><td><input type="text" name="mobile" value="<%=rs.getString(9)%>"></td>
		<tr><td><h3>Year</td><td><input type="text" name="year" value="<%=rs.getString(13)%>"></td>
		<tr><td></td><td><h3><input type="submit" value="Update"></h3>       
	<!--	<tr><td><h3><%=rs.getString(1)%></td><td><h3><%=rs.getString(4)%></td><td><h3><%=rs.getString(3)%></td><td><h3><%=rs.getString(7)%></td><td><h3><%=rs.getString(9)%></td><td><h3><%=rs.getString(13)%></td><td><h3><a href="aupdatestudent.jsp?rollno=<%=rs.getString(1)%>">Update</a>|<a href="adeletestudent.jsp?rollno=<%=rs.getString(1)%>">Delete</a></td> -->
		
	</table>
	</form>
	<%}%>
		</div>




<!--- end body---->
        

      
      </div>
      <%@include file="aside.jsp"%>
	 
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">

  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">VJYA</a></p>
      <p class="rf">Design by <a target="_blank" href="#">CSE</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

