
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page import="java.util.*" %>

<%@ page import="java.sql.*" %>
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

<html>
  
  <head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
     <title>forgot3.jsp</title>
    
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
    String secans =request.getParameter("sec-a");
  
     
    String emailid = (String)request.getSession().getAttribute("email"); 
     
    rs1=stmt.executeQuery("Select Password,Sec_ans from IPARIKH.Student where Email_id='"+ emailid +"'");
    while(rs1.next())
    {
        String sa=rs1.getString("Sec_ans");
        String pwd=rs1.getString("Password");
        if(secans.equals(sa))
        {
            
                final String uname = "dbmsproject14@gmail.com";
                final String pswrd = "limb_project";

                Properties props = new Properties();
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

                Session session1 = Session.getInstance(props,
                      new javax.mail.Authenticator() 
                      {
                        protected PasswordAuthentication getPasswordAuthentication() 
                        {
                            return new PasswordAuthentication(uname, pswrd);
                        }
                      });

                try {

                        Message message = new MimeMessage(session1);
                        message.setFrom(new InternetAddress("dbmsproject14@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO,
                            InternetAddress.parse(emailid));
                        message.setSubject("Password Information : Confidential");
                        message.setText("Dear Customer"
                            + "\n\n Your password is :: " + pwd);

                        Transport.send(message);

                        out.println("Your Password has been sent to your email address!");

                    } 
                    catch (MessagingException e) 
                    {
                            throw new RuntimeException(e);
                    }
    
             }
             else
            {
                   response.sendRedirect("index.jsp");
            }
        }
    
        
 }
  catch(SQLException e)
  {
      out.println(e);
  }
%>
    
</body>
</html>