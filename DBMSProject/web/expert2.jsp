<%-- 
    Document   : expert2
    Created on : Apr 5, 2014, 8:31:36 PM
    Author     : Lipee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.UUID"%>

<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.UnsupportedEncodingException" %>
<%@page import ="java.util.Properties" %>
<%@page import ="javax.mail.Message" %>
<%@page import ="javax.mail.MessagingException"%>
<%@page import ="javax.mail.PasswordAuthentication"%>
<%@page import ="javax.mail.Session"%>
<%@page import ="javax.mail.Transport"%>
<%@page import ="javax.mail.internet.AddressException"%>
<%@page import ="javax.mail.internet.InternetAddress"%>
<%@page import ="javax.mail.internet.MimeMessage"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>


<html>

<head>
  <title>BYC Expert</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
  <link href="Style.css" rel="stylesheet">
</head>


<body>
<tr> <td style="color:white"> Hello user <%=session.getAttribute("username")%>
</td>
</tr>
      <%

    final String uname = "dbmsproject14@gmail.com";
    final String pswrd = "limb_project";
    
    Properties props = new Properties();
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    Session session1 = Session.getInstance(props,
          new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(uname, pswrd);
            }
          });
 try

 {
    String cnm1=request.getParameter("course");
    String query1=request.getParameter("query");
    String email1 = (String)session.getAttribute("username");
    Statement stmt = null;
    ResultSet rs1=null;
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    Connection c = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");
    stmt = c.createStatement();
    if(cnm1!=null) 
        rs1=stmt.executeQuery("Select exp_email from iparikh.Test where course_nm='"+cnm1+"'");
 %>
 
 <%  while(rs1.next())
   
    {
        String email=rs1.getString("Exp_email");
        
            Message message = new MimeMessage(session1);
            message.setFrom(new InternetAddress("dbmsproject14@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(email));
            message.setSubject("Query Answer");
            message.setText("Dear Expert"
                + "\n\n Here is a Student's Query :: " + query1 + " \n Email Address ::" + email1);

            Transport.send(message);
            out.println("Your Query has been succesfully mailed to the Expert !");  
            response.sendRedirect("Useraccount.jsp");
 
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

            
             
      
