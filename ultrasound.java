/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ultrasound;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

/**
 *
 * @author root
 */
public class Ultrasound {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws MalformedURLException, IOException {
        // TODO code application logic here
        try {
            while (true) {
                File file = new File("/root/Desktop/iuatc");
                File allfiles[] = file.listFiles();
                if (allfiles.length >= 1) {
                    for (int i = 0; i < allfiles.length; i++) {
                        System.out.println(allfiles[i].getName());
                       
                        if("ultrasound.txt".equals(allfiles[i].getName()))
                            
                                {
                                     System.out.println(allfiles[i].getName());
                                 String servletLocation1 = "http://192.168.0.15:8084/IUATC/AuthenticationServerinfo.jsp";  
                                  // String servletLocation = "http://www.iith.ac.in/IUATC/AuthenticationServerinfo.jsp";
                        URL testServlet = new URL(servletLocation1);
                        HttpURLConnection servletConnection1 = (HttpURLConnection) testServlet.openConnection();

//inform the connection that we will send output and accept input  
                        servletConnection1.setDoInput(true);
                        servletConnection1.setDoOutput(true);
                        servletConnection1.setAllowUserInteraction(true);

//Don't use a cached version of URL connection.  
                        servletConnection1.setUseCaches(false);
                        servletConnection1.setDefaultUseCaches(false);

//Specify the content type that we will send binary data  
                        servletConnection1.setRequestProperty("Content-Type", "application/octet-stream");
                        servletConnection1.setRequestMethod("POST");
                        OutputStream os1 = servletConnection1.getOutputStream();
                        FileInputStream fis1 = new FileInputStream(allfiles[i]);
                        int msg = fis1.read();
                        while (msg != -1) {
                            os1.write(msg);
                            msg = fis1.read();
                        }
//send data  
                        os1.flush();
                        os1.close();
                        allfiles[i].delete();
                         servletConnection1.getResponseMessage();
                                }
                     
                        else{
                        String servletLocation = "http://192.168.0.15:8084/IUATC/AuthenticationServer.jsp";
                        // String servletLocation = "http://www.iith.ac.in/IUATC/AuthenticationServer.jsp";
                        URL testServlet = new URL(servletLocation);
                        HttpURLConnection servletConnection = (HttpURLConnection) testServlet.openConnection();

//inform the connection that we will send output and accept input  
                        servletConnection.setDoInput(true);
                        servletConnection.setDoOutput(true);
                        servletConnection.setAllowUserInteraction(true);

//Don't use a cached version of URL connection.  
                        servletConnection.setUseCaches(false);
                        servletConnection.setDefaultUseCaches(false);

//Specify the content type that we will send binary data  
                        servletConnection.setRequestProperty("Content-Type", "application/octet-stream");
                        servletConnection.setRequestMethod("POST");
                        OutputStream os = servletConnection.getOutputStream();
                        FileInputStream fis = new FileInputStream(allfiles[i]);
                        int msg = fis.read();
                        while (msg != -1) {
                            os.write(msg);
                            msg = fis.read();
                        }
//send data  
                        os.flush();
                        os.close();
                        allfiles[i].delete();
                        
//Remember your doPost() method gets fired actually by these last 2 lines.  
                        servletConnection.getResponseMessage();
                       BufferedReader rd= new BufferedReader(new InputStreamReader(servletConnection.getInputStream()));
                       String line;
                       while ((line=rd.readLine())!=null)
                        {
                          System.out.println(line);
                        }
                        servletConnection.disconnect();

                        servletConnection = null;
                        //System.out.println("File sent!");
                    }
                    }
                } else {
                    System.out.println("Files does't exist...");
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException r) {
                    };
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

//System.exit(0);  
    }
   
}
