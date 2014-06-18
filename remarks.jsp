<%-- 
    Document   : remark
    Created on : 13 Jun, 2014, 12:43:29 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<!DOCTYPE html>
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
<body bgcolor="eeeee0">
      
<div id="header" style="background-color:#000080;cler:both;text-align:center;height:70px;">
            <img src="images/1.png" width="50px" height="50px"/>  &nbsp;
            
                <b><font size="6" color="white">INDIAN INSTITUTE OF TECHNOLOGY,HYDERABAD</font></b></div></br>
    </br>
    </br>
    <%
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
            
           String sql="insert into remarks(patient_id,remarks) values(?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(2,request.getParameter("remarks"));
           //System.out.println("patientid"+request.getParameter("remarks"));
            ps.setInt(1,Integer.parseInt(request.getParameter("patient_id")));
            ps.executeUpdate();
            ps.close();
            con.close();
            System.out.println("success");
            response.sendRedirect("allremarks.jsp?patient_id="+request.getParameter("patient_id"));
            
            
            
        }catch(Exception e){};
    %>
