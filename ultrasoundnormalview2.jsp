<%-- 
    Document   : normalview
    Created on : 2 May, 2014, 6:04:58 PM
    Author     : root
--%>



<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%
   int time=Integer.parseInt(request.getParameter("patientid"));
   int j=0;
   String patient_info=null;
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
    ResultSet rs=st.executeQuery("select image,time,patientid,patient_info from us");
  
    while(rs.next())
    {
      String time1=rs.getTimestamp(2).toString();
      int pid=rs.getInt(3);
      patient_info=rs.getString(4);
       // out.println(time1.substring(0,10));
       if(time==pid)
       {
           System.out.println("hanuman");
      // InputStream is=rs.getBinaryStream(1);
      // BufferedReader br=new BufferedReader(new InputStreamReader(is));
      // BufferedWriter bw=null;
       
       //String value1;/root/NetBeansProjects/UltrasoundImages/web/image1
        ++j;
        File f=new File("/root/NetBeansProjects/BestSite/web/image1/"+j);
         // bw=new BufferedWriter(new FileWriter(f));
          FileOutputStream fos = new FileOutputStream(f);

                byte[] buffer = new byte[1024];

                // Get the binary stream of our BLOB data
                InputStream is1 = rs.getBinaryStream(1);
                while (is1.read(buffer) > 0) {
                    fos.write(buffer);
                     }
                fos.flush();
                fos.close();
                is1.close();
                buffer=null;
      // while((value1=br.readLine())!=null)
       //{
        //bw.write(value1);
        
       //  }
       //bw.flush();
       //bw.close();
      // br.close();
       
 
       }
           
           }
    
 }catch(Exception y){}; 
 
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
<body bgcolor="eeeee0">
      
<div id="header" style="background-color:#000080;cler:both;text-align:center;height:70px;">
            <img src="images/1.png" width="50px" height="50px"/>  &nbsp;
            
                <b><font size="6" color="white">INDIAN INSTITUTE OF TECHNOLOGY,HYDERABAD</font></b></div></br>
    </br>
    </br>

<center>
    <b style="color:blue;font-size: 30px">Patient Information<br><%=patient_info%></b>
</center><br><br>
    <table align="center">
        <tr>
            <th align="center" style="height: 30px;width:330px" colspan="10"><h3 style="color:green">S.NO</h3> </th>
    <th align="center" style="height: 30px;width:330px"><h3 style="color:green">IMAGES</h3></th>
<th align="center" style="height: 30px;width:330px"><h3 style="color:green">REMARKS</h3></th>
</tr>
<%
File f = new File("/root/NetBeansProjects/BestSite/web/image1");
File[] files = f.listFiles();
int k=1;
for(int i=0;i<files.length;i++){
String name=files[i].getName();
String path=files[i].getPath();
int li=path.lastIndexOf("/");
path="image1/"+path.substring(li+1);
System.out.println(path);
%>
<tr>
    <td align="center" style="height: 30px;width:330px" colspan="10"> <%=k++%></td>
    <td align="center"><img src="<%=path%>"/></td>
    <td> <form name="remark" action="remark.jsp?patient_id=<%=time%>" method="POST">
                    <textarea name="remarks" cols="30" rows="7"></textarea><br>
                    <input type="submit" name="remarks" value="remarks" style="color:blue;align:center"/>
        </form>
</tr>
<%
}
try{
Thread.sleep(2000);
}catch(InterruptedException i){};

for(int i=0;i<files.length;i++){
   files[i].delete();
}
%>
</table>
</body>
</html>
