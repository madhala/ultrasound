<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Orange Mint 


-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="view.css" media="all">
<script type="text/javascript" src="view.js"></script>
<script type="text/javascript" src="calendar.js"></script>
<title>Pollution Monitor </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
			  <p>PERVASIVE SENSOR ENVIRONMENT</p>
				<p>IU-ATC India-UK Advanced Technology Centre of Excellence in Next Generation Networks, Systems and Services </a></p>
			</div>
			<div id="menu">
				<ul>    <li><a href="index.jsp">Home</a></li>
					<li class="current_page_item"><a href="Statistics.jsp">Statistics</a></li>
                                       	<li><a href="photos.jsp">Photos</a></li>
					
					<li><a href="people.jsp">People</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
                            <div id="content" style="background-color:#555555">
                                <h3>Cloud Based Authentication of DeviceAccessing..</h3>
                                <%
                                int deviceid=Integer.parseInt(request.getParameter("deviceid"));
                                %>
                	 <form method="post" action="DeviceAccesscheck.jsp?deviceid=<%=deviceid%>">
            
                             <table border="0"  cellpadding="0" align="center">
               
                    <tr>
                        <th colspan="2" align="left"><h1>DeviceAccess Login</h1a></th><br></br>
                    </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr>
                    <tr>
                        <td><h1 style="color:green">User Name:&nbsp;&nbsp;</h1>  </td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr><tr><td></td><td></td></tr>
                
                    <tr>
                        <td ><h1 style="color:green">Password  :&nbsp;&nbsp;&nbsp;</h1></td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                    <tr>
                       
                        <td></td>
                        <td align="center"><input type="submit" size="20px" style="color:blue" value="Login" /></td>
                       
                    </tr>
           
            </table>
           </form>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<div id="search" >
								<form method="get" action="#">
									<div>
										<div align="left">
										  <input type="text" name="s" id="search-text" value="" />
										  <input type="submit" id="search-submit" value="GO" />
									  </div>
									</div>
								</form>
							</div>
							<div style="clear: both;">&nbsp;</div>
						</li>
						
						<li>
							<h2 align="left">External Links</h2>
							<li>
							  
							  
							  <div align="left">
							    <ul>
                                                                <li><a href="http://www.ucl.ac.uk/" target="_blank">UCL</a></li></br>
							      <li><a href="http://www.iith.ac.in/" target="_blank">IIT Hyderabad</a></li></br>
							      <li><a href="http://www.iitd.ac.in/" target="_blank">IIT Delhi</a></li></br>
							      <li><a href="http://www.iitb.ac.in/" target="_blank">IIT Bombay</a></li></br>
							      
							    <!--  <li><a href="http://www.qmul.ac.uk" target="_blank">QMUL</a></li>
							      <li><a href="http://www.ulster.ac.uk/" target="_blank">Ulster</a></li>
							      <li><a href="http://www.bt.com/" target="_blank">BT</a></li>
							      <li><a href="http://www.infosys.com/" target="_blank">Infosys</a></li>
							      <li><a href="http://www.wipro.com/" target="_blank">Wipro</a></li>-->
						        </ul>
							    
							    <ul>
						        </ul>
						      </div>
					  </li>
					    
			            <div align="left">
			                </li>
		              </div>
					</ul>
				</div>
				<div align="left"><!-- end #sidebar -->
				  </div>
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2012 www.iith.ac.in. All rights reserved. Design by R.D.Praveen Kumar @ <a href="http://www.iith.ac.in/">IIT-Hyderabad</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
