<%-- 
    Document   : voltage
    Created on : 2 May, 2014, 5:56:24 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String date=request.getParameter("date");
if(Integer.parseInt(date)<10)
{
    date="0"+date;
}
String month=request.getParameter("month");
if(Integer.parseInt(month)<10)
{
    month="0"+month;
}
String year=request.getParameter("year");
String time=year+"-"+month+"-"+date;

   response.sendRedirect("ultrasoundnormalview1.jsp?time="+time);
%>
