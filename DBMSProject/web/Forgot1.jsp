
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page import="java.util.*" %>

<%@ page import="java.sql.*" %>

<html>
  
  <head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
     <title>forgot1.jsp</title>
    
   </head>
  
    
     
  <%
 try
 {

    Statement stmt = null;
    ResultSet rs1=null;
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    Connection c = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");
    stmt = c.createStatement();
    int flag=0;
    String emailid=request.getParameter("email");
    rs1=stmt.executeQuery("Select Sec_ques from IPARIKH.Student where EMAIL_ID='"+emailid+"'");
    while(rs1.next())
    {
        String eid=rs1.getString("Sec_ques");
        session.setAttribute("sq",eid);
        session.setAttribute("email",emailid);
    }
    
         response.sendRedirect("Forgot2.jsp");

 }
  catch(SQLException e)
  {
      out.println(e);
  }
%>
    
</body>
</html>