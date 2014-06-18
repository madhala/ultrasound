<%-- 
    Document   : fueldata1
    Created on : 2 May, 2014, 11:01:45 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body bgcolor="#eeeee0">
        <div id="header" style="background-color:#000080;cler:both;text-align:center;height:70px;">
            <img src="images/1.png" width="50px" height="50px"/>  &nbsp;
            
                <b><font size="6" color="white">INDIAN INSTITUTE OF TECHNOLOGY,HYDERABAD</font></b></div></br>
        
        <div style="height:380px">
            <div style="float:left; clear:right; width:624px;height: 500px"><br><br><br><br>
                <h1 style="color:blue;margin-left: 1cm">Welcome Dr.<%=request.getParameter("id")%></h1><br>
                <p style="margin-left:1cm"><h3 style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;EMERGING TRENDS IN ULTRASOUND IMAGING:</h3></br>
        <marquee direction="up" scrollamount="2" height="300px" onmouseover="this.stop()" onmouseout="this.start()">
        <a href="http://www.itnonline.com/article/ecri-report-describes-lower-priced-option-treating-bone-metastases" style="color:green;margin-left:1cm" target="_blank">ECRI Report Describes Lower Priced Option Treating Bone Metastases</a><br>
        <p style="color:black;margin-left:1cm">June 5, 2014  Magnetic resonance-guided focused ultrasound (MRgFUS) is one of the top 10 technologies to watch in 2014, according to a report released by the ECRI Institute. MRgFUS using the..
        </p><br>
        <a href="http://healthcare.financialexpress.com/201106/radiology01.shtml" style="color:green;margin-left:1cm" target="_blank">The Ultrasound Product Market in India</a><br>
        <p style="color:black;margin-left:1cm">The total ultrasound market revenue in India in 2010 was estimated to be nearly $120 million and the market is expected to double by 2015..</p><br>
        <a href="http://www.itnonline.com/article/fda-clears-clean-convenient-cost-effective-gel-ultrasound-spray" style="color:green;margin-left:1cm" target="_blank">FDA Clears Clean Convenient Cost Effective Gel Ultrasound Spray</a><br>
        <p style="color:black;margin-left:1cm">June 4, 2014  The U.S. Food and Drug Administration (FDA) recently cleared BB Medical Surgicals Thixo-Gel, which is sprayed on to the patient to enable quicker and easier..</p><br>
        <a href="http://www.marketwatch.com/story/pennsylvania-governor-corbett-asks-federal-government-for-medicaid-reform-2013-02-05" style="color:green;margin-left:1cm" target="_blank">Diagnostic Ultrasound Imaging - Global Analysis and Market Forecasts </a><br>
        <p style="color:black;margin-left:1cm">An early diagnosis of disease is the foundation for increasing survival rates. Diagnostic ultrasound imaging is the most widely used technique to achieve early detection and clinical assessment of adult and pediatric patients alike, making it a cornerstone of disease control..</p></br>
        <a href="http://www.colordopplermedia.com/market2-sept.htm" style="color:green;margin-left:1cm" target="_blank">Ultrasound Imaging Market Analysis in India</a></br>
        <p style="color:black;margin-left:1cm">An expanding population, a booming economy, high-end, user-friendly machines and the Government's efforts to decrease maternal and infant mortality rate are encouraging the growth of the ultrasound market in India..</p>
        </marquee>
            
   </div>
        <div style="float:left; clear:right; width:1024px;height: 500px">
            <h1 align="center" style="color:blue">Images to be Diagnosed for</h1>
          <form name="voltage" action="ultrasound.jsp" method="post">
            <center><b style="color:blue">DD/MONTH/YEAR:</b>&nbsp;&nbsp;                <select name="date" style="color:green;height:30px;width:40px">
 
     <%
        Date d=new Date();
        String date=null,year=null,month1=null;
        int month=d.getMonth();
        month=month+1;
        if(month<10)
        {
            month1="0"+Integer.valueOf(month).toString();
        }
         StringTokenizer st=new StringTokenizer(d.toString());
    while(st.hasMoreElements())
    {
        st.nextToken();
        st.nextToken();
       date=st.nextToken();
        st.nextToken();
        st.nextToken();
       year= st.nextToken();
        
    }
     %>
     <option value="<%=date%>"><%=date%></option>  
  <option value="1">01</option>
  <option value="2">02</option>
  <option value="3">03</option>
  <option value="4">04</option>
  <option value="5">05</option>
  <option value="6">06</option>
  <option value="7">07</option>
  <option value="8">08</option>
  <option value="9">09</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option>
  <option value="26">26</option>
  <option value="27">27</option>
  <option value="28">28</option>
  <option value="29">29</option>
  <option value="30">30</option>
   <option value="31">31</option>
                </select>&nbsp;&nbsp;
                 <select name="month" style="color:green;height:30px;width:40px">
  <option value="<%=month%>"><%=month%></option>
  <option value="1">01</option>
  <option value="2">02</option>
  <option value="3">03</option>
  <option value="4">04</option>
  <option value="5">05</option>
  <option value="6">06</option>
  <option value="7">07</option>
  <option value="8">08</option>
  <option value="9">09</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option></select>&nbsp;&nbsp;
   <select name="year" style="color:green;height:30px;width:60px">
       <option value="<%=year%>"><%=year%></option>
  <option value="2013">2013</option>
  <option value="2014">2014</option>
  <option value="2015">2015</option>
   </select>&nbsp;&nbsp;<br/>
   
   </br>
   </br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit"  name="GetView" style="color:green;width:148px;height:48px" value="GetImages"/>
   </center>
          </form><br><br></br><br><br>
          <center>
   <embed type="application/x-shockwave-flash" src="https://photos.gstatic.com/media/slideshow.swf" width="500" height="350" flashvars="host=picasaweb.google.com&hl=en_US&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F115899225713606787860%2Falbumid%2F6023550042833635665%3Falt%3Drss%26kind%3Dphoto%26hl%3Den_US" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
          </center>
        </div>  
        </div>
  <br>
      <center>
<!--        <embed type="application/x-shockwave-flash" src="https://photos.gstatic.com/media/slideshow.swf" width="500" height="350" flashvars="host=picasaweb.google.com&hl=en_US&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F115899225713606787860%2Falbumid%2F6023550042833635665%3Falt%3Drss%26kind%3Dphoto%26hl%3Den_US" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>-->
    </center>
        <!--  <marquee>
      
    <a href="images/1_1.png" target="_blank">  <img src="images/1_1.png" height="200" width="200"></a>
    <a href="images/2_2.png" target="_blank">  <img src="images/2_2.png" height="200" width="200"></a>
    <a href="images/3_3.png" target="_blank">     <img src="images/3_3.png" height="200" width="200"> </a>
    <a href="images/4_4.png" target="_blank">     <img src="images/4_4.png" height="200" width="200"> </a>
    <a href="images/5_5.png" target="_blank">     <img src="images/5_5.png" height="200" width="200"> </a>
    <a href="images/6_6.png" target="_blank">     <img src="images/6_6.png" height="200" width="200"> </a>
    <a href="images/1_1.jpg" target="_blank">  <img src="images/1_1.jpg" height="200" width="200"></a>
    <a href="images/2_2.jpg" target="_blank">  <img src="images/2_2.jpg" height="200" width="200"></a>
     <a href="images/7_7.jpg" target="_blank">     <img src="images/7_7.jpg" height="200" width="200"> </a>
      <a href="images/8_8.JPG" target="_blank">     <img src="images/8_8.JPG" height="200" width="200"> </a>
       <a href="images/9_9.jpg" target="_blank">     <img src="images/9_9.jpg" height="200" width="200"> </a>
       <a href="images/10_10.jpg" target="_blank">     <img src="images/10_10.jpg" height="200" width="200"> </a>
    
  </marquee>-->
        
    </body>
</html>
