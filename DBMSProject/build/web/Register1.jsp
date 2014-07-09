<%@page import="java.util.UUID"%>
<%@page import ="java.sql.*" %>
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

<%
    String S_id=UUID.randomUUID().toString();
    String pwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String birthday = request.getParameter("dob");
    String ph =request.getParameter("phone");
    
    String secq = request.getParameter("sec-q");
    String seca = request.getParameter("sec-a");
    String code1=S_id;
    int act =0;
    
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

        try {

            Message message = new MimeMessage(session1);
            message.setFrom(new InternetAddress("dbmsproject14@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(email));
            message.setSubject("Activation Code");
            message.setText("Dear Customer"
                + "\n\n Enter this code to activate your account:: " + code1);

            Transport.send(message);

            //System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");
    Statement st = con.createStatement();
    Statement st2=con.createStatement();
    //ResultSet rs;
    int j=st2.executeUpdate("alter session set NLS_DATE_FORMAT='yyyy-mm-dd'");
    int i = st.executeUpdate("insert into IPARIKH.Student(Student_id,Email_id,Password, First_nm, Last_nm,Ph_num,DOB,Sec_ques,Sec_ans,Acct_active) values ('" + S_id + "', '" + email + "', '" + pwd + "', '" + fname + "', '" + lname + "','" + ph + "', '" + birthday + "', '" + secq +"', '"+seca+"', '"+act+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("CodeActivation.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
