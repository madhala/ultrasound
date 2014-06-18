<%-- 
    Document   : normalview
    Created on : 2 May, 2014, 6:04:58 PM
    Author     : root
--%>



<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%
   String time=request.getParameter("time");
   int j=0;
   %>
<html>
    <head>
        <style>
table {
    border-collapse: collapse;
}

table, td, th {
    border: 3px solid black;
}
</style>
    </head>
    <body bgcolor="#eeeee0">
  <div id="header" style="background-color:#000080;cler:both;text-align:center;height:70px;">
            <img src="images/1.png" width="50px" height="50px"/>  &nbsp;
            
                <b><font size="6" color="white">INDIAN INSTITUTE OF TECHNOLOGY,HYDERABAD</font></b></div></br>
    </br>
    </br> 
    <center>
    <form name="loc" action="location.jsp" method="POST">
        <b style="color:blue;font-size: 30px;margin-left: 5px">Select Location:</b>
         <select name="location" style="color:green;height:30px;width:140px">
 
  <option value="Hyderabad">Hyderabad</option>
  <option value="Chennai">Chennai</option>
  <option value="Bangalore">Bangalore</option>
  <option value="Mumbai">Mumbai</option>
  <option value="Kolkata">Kolkata</option>
  <option value="Delhi">Delhi</option></select>&nbsp;&nbsp;
        <input type="submit" style="color:blue;width:140px;height:30px" name="location" value="Get Device IDs"/>
    </form></center>
    </br>
    </br>
    <table align="center">
        <tr>
            <th align="center" style="height: 30px;width:330px" colspan="10"><h3 style="color:green">LOCATION</h3> </th>
    <th align="center"  style="height: 30px;width:330px"><h3 style="color:green">DEVICE_ID</h3></th>
<th align="center" style="height: 30px;width:330px"><h3 style="color:green">TIME</h3></th>
<th align="center" style="height: 30px;width:330px"><h3 style="color:green">Device_Unlocked By</h3></th>
</tr>
<%
   //out.println(time);
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
    ResultSet rs=st.executeQuery("select time,device_id,location,Device_Unlock from us");
  
    while(rs.next())
    {
      String time1=rs.getTimestamp(1).toString();
      String location=rs.getString(3);
      String unlock=rs.getString(4);
      int deviceid=rs.getInt(2);
       // out.println(time1.substring(0,10));
       if(time.equals(time1.substring(0,10)))
       {
           System.out.println("hanuman");
      %>
<tr>
    <td align="center" style="height: 30px;width:330px; color:blue"  colspan="10"> <%=location%></td>
    <td align="center" style="height: 30px;width:330px"><a href="patient.jsp?deviceid=<%=deviceid%>"><%=deviceid%></a></td>
    <td align="center" style="height: 30px;width:330px;color:blue"> <%=time1%></td>
    <td align="center" style="height: 30px;width:330px;color:blue"> <%=unlock%></td>
</tr>      
<%
      }
           
           }
    
 }catch(Exception y){}; 
 
%>

 </table>

</body>
</html>
