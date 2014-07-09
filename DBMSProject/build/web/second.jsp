<%-- 
    Document   : second
    Created on : Aug 20, 2012, 10:00:14 AM
    Author     : Lipee
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>


<%@ page import="java.util.*" %>


<%@ page import="java.sql.*" %>


<html>
  
  <head>
       
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
     
<title>JSP Page</title>
    
   
</head>
 
 
    
  <%

 try

 {


    Statement stmt = null;
   
 ResultSet rs1=null;
   
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
  
  Connection c = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");

    stmt = c.createStatement();
  
  String userName=request.getParameter("username");
  
  int flag=0;
   
 String secretWord=request.getParameter("password");
 
   rs1=stmt.executeQuery("Select Email_id,Password from IPARIKH.Student where Email_id='"+userName+"' and Password='"+secretWord+"'");
 
   while(rs1.next())
   
 {

        String eid=rs1.getString("Email_id");
 
       String epswrd=rs1.getString("Password");
  
      if(eid.equals(userName) && epswrd.equals(secretWord) && eid!=null && epswrd!=null)
 
       {
       
    session.setAttribute("username",userName);         
  %>
           
 
           <jsp:forward page="Useraccount.jsp"/> 
       
     <%
   
     }
  
      else
    
      flag=0;
  
  }
 
   if(flag == 0)
    {
      
 
       %>
     
       <jsp:forward page="index.jsp"/> 
    
    <%
  
  }
    c.close();


 }

  catch(SQLException e)
 
 {
      out.println(e);
  
}


%>

    
</body>

</html>