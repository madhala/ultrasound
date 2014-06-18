<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Orange Mint 


-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
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
                             <%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    int i=0;
  System.out.println(user);
  System.out.println(pwd);
  //.out.println(pwd);
     try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		System.out.println("Where is your MySQL JDBC Driver?");
		e.printStackTrace();
	}
 
           Connection con = null;
 
	try 
        {
		con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
 
	} catch (SQLException e) {
		System.out.println("Connection Failed! Check output console");
		e.printStackTrace();
	}
        try{
    Statement st = con.createStatement();
    //System.out.println(user);
    ResultSet rs=st.executeQuery("select * from login");
    while(rs.next())
    {
    if(user.equals(rs.getString(1))&&pwd.equals(rs.getString(2)))
    {  
        //out.println("success");
    //System.out.println(user);
       // response.sendRedirect("fueldata.jsp");
     i=1;   
     break;
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } 
   
    }
    if(i==1)
    {
    response.sendRedirect("ultrasoundimages.jsp?id="+request.getParameter("uname"));
    }
   else
    response.sendRedirect("failed.jsp");
    }catch(SQLException s){}
    
%>
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
