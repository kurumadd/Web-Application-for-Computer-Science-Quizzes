
<%@page import ="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    String pwd = request.getParameter("password");
    String uname = request.getParameter("username");
    String code1 = request.getParameter("code");
    int act =1;
    
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs1=null;
    int flag=0;
    rs1=st.executeQuery("Select Email_id,Password from IPARIKH.Student where Email_id='"+uname+"' and Password='"+pwd+"'");
    while(rs1.next())
    {
        String eid=rs1.getString("Email_id");
        String epswrd=rs1.getString("Password");
        if(eid.equals(uname) && epswrd.equals(pwd) && eid!=null && epswrd!=null)
        {
            int i = st1.executeUpdate("update IPARIKH.Student set Code='"+code1+"' , Acct_active='"+act+"' where Student_id='"+code1+"'");
            if (i > 0) 
            {
                response.sendRedirect("Useraccount.jsp");
            } 
            else 
            {
                response.sendRedirect("index.jsp");
            }
        }
        else
          flag=0;
    }
    
%>
