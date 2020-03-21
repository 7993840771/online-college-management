<%-- 
    Document   : reg
    Created on : Jul 2, 2016, 6:55:50 PM
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
<title>ProvenDW  Consultants Private Limited</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
                <%
           if (request.getParameter("msg") != null) {
        %>
        <script>alert('Registration Successfully');</script>
        <%
            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
          <br><h2>ProvenDW  Consultants Private Limited</h2>
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
          <h2><span>Student Registration</span></h2><br>
       <%
           if (request.getParameter("m") != null) {
        %>
        <script>alert('Student Added Successfully');</script>
        <%
            }
        %> 
          <div class="clr"></div>
        <form method="post" action="stureg2.jsp">
		
	
<font size="5" color="#000000"><b>
<table cellspacing="10"  >
<tr><td><font size="3" color="#000000"><b>Hall Ticket</font><td><input type="text" name="hall" size="30" required>
<tr><td><font size="3" color="#000000"><b>Batch<td><select name="bat">
	<option value="R11" selected>R11
        <option value="R13" selected>R13
        <option value="R14" selected>R14
	<option value="R15" selected>R15
	<option value="R16" selected>R16
</select>
<td>
<tr><td><font size="3" color="#000000"><b>Fee Details<td><select name="fee">
	<option value="" selected>select Fee
	<option value="22000">Reimbursement
	<option value="57500" >Regular Fee
	
</select>
<td>

<font size="3" color="#000000"><b>Year<td><select name="year">

	<option value="1" >I
		<option value="2" >II
			<option value="3" >III
				<option value="4" >IV

</select>
<td>
<font size="3" color="#000000"><b>Sem<td><select name="sem">

	<option value="1" >I
		<option value="2" >II

</select>


</table>
<br>
<table cellspacing="10"  >
<tr><td><font size="3" color="#000000"><b>Student Full Name</font><td><input type="text" name="name" size="30" required><td><font size="3" color="#000000"><b>Father's Name</font><td><input type="text" name="fname" size="20" required>
</table>
<table cellspacing="10"  >
<tr><td><font size="5" color="#0000"><b></font>Male&nbsp;&nbsp;<input type="radio" name="gen" value="Male">&nbsp;&nbsp;&nbsp;Female&nbsp;&nbsp;&nbsp;<input type="radio" name="gen" value="Female">
</table>
<br>
<table cellspacing="10"  >
<tr><td><font size="5" color="#000000"><b></font>Email&nbsp;&nbsp;<input type="text" name="email" size="30" required>
<tr><td><font size="5" color="#000000"><b></font>Res Ph No&nbsp;&nbsp;<input type="text" name="res" size="20" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No&nbsp;&nbsp;<input type="text" name="mob" size="20" required>
</table>
<br>

<!--
<table cellspacing="10"  >
<tr><td><font size="5" color="#000000"><b></font>Religion&nbsp;&nbsp;<input type="text" name="rel" size="10" required>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cast&nbsp;&nbsp;<input type="text" name="cast" size="10" required>
</table>-->

<table cellspacing="10"  >
<tr><td><font size="5" color="#000000"><b></font>Password&nbsp;&nbsp;<input type="password" name="pwd" size="30" required>
&nbsp;&nbsp;
</table>

<table cellspacing="10"  >
<tr><td><input type="submit" value="     Register     ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset">
</table>

</form>
        </div>




<!--- end body---->
        

      
      </div>
   
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">

  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">VITS</a></p>
      <p class="rf">Design by <a target="_blank" href="#">CSE</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

