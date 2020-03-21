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
                <%
           if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
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
       
       
     <%@include file="header.jsp"%>
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
          <h2><span>Admin</span></h2><br>
          
          <div class="clr"></div>
        <form action="adminlogin.jsp" method="get"> 
    <input type="text"class="inputs" name="name" required="" placeholder="Your Name" /> <br>
    <input type="password"class="inputs" name="pass" required="" placeholder="Password" /><br> 
    <input type="hidden" value="3" name="status" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Login" class="button" >
             </form>
        </div>




<!--- end body---->
        

      
      </div>
      <%@include file="side.jsp"%>
	 
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

