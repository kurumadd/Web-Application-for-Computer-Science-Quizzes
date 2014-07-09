<%-- 
    Document   : Search
    Created on : Apr 16, 2014, 2:37:27 AM
    Author     : Lipee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
          <link href="Style.css" rel="stylesheet">
        
          <title>Companies</title>
    </head>
    <%@ page import="java.util.*" %>


<%@ page import="java.sql.*" %>
    <body>
        <h1>Companies!</h1>
         <div id="page">
<link href='http://fonts.googleapis.com/css?family=Anaheim' rel='stylesheet' type='text/css'>
         <%

 try

 {
     int i=1;

 Statement stmt = null,stmt1=null;
   
 ResultSet rs1=null,rs2=null;
 
 int t=0;
   
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
  
  Connection c = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");

    stmt = c.createStatement();
  
  String uid=(String)session.getAttribute("username");
 
   rs1=stmt.executeQuery("Select TechQ from iparikh.Result where Student_Id='"+uid+"'");
 
  while(rs1.next())
  {
      t=rs1.getInt("TechQ");
  }
  
  stmt1=c.createStatement();
  
  rs2=stmt1.executeQuery("select * from iparikh.company where threshold <='"+t+"'");
 %> 
  <div class="field_wrap">
 <form>
	<table rows=3 columns=4 border=1>
            <tr>
                <td><b>Number</b></td>
                <td><b>Company name</b></td>
                <td><b>Threshold</b></td>
                <td><b>Open Position</b></td>
        </tr>
  
  
  <%
  while(rs2.next())
  {
      
      String cname=rs2.getString(2);
      int thresh=rs2.getInt(3);
      String openpos=rs2.getString(4);
      
   %>
   
   <tr>
		
           <td> <%= i %> </td>
           <td> <%= cname %> </td>
           <td> <%= thresh %> </td>
           <td> <%= openpos %> </td>
   </tr>
   <%
   i++;
   
  }
  %>
        </table>
         </form>
         </div>
         <%
  stmt1.close();
  stmt.close();
  c.close();


 }

  catch(SQLException e)
 
 {
      out.println(e);
  
}
        %>
         </div>
    </body>
</html>
