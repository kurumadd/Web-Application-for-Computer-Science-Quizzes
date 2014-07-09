<%-- 
    Document   : Easy1
    Created on : May 14, 2013, 5:55:48 PM
    Author     : Lipee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.servlet.http.*" %> 
         <%@ page import="javax.servlet.http.HttpSession.*" %> 
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Questions</title>
    </head>
   
    
 <%  
        Statement stmt = null;
        ResultSet rs = null;
        try {
           
                DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                Connection c = DriverManager.getConnection("jdbc:oracle:thin:iparikh/iparikh@oracle1.cise.ufl.edu:1521:orcl","iparikh","Sairam2391");
                stmt = c.createStatement();
                int i,a2;
                String marks="0";
                Integer cnt=new Integer(0);
                String heading=null;

                Integer accessCount = new Integer(1);
    		if (session.isNew()) 
		{
      			heading = "Welcome, Newcomer";
    		} 
		else 
		{
      			heading = "Welcome Back";
      			Integer oldAccessCount = (Integer)session.getAttribute("accessCount"); 
      			if (oldAccessCount != null) 
			{
        		accessCount = new Integer(oldAccessCount.intValue() + 1);
			}
    		}
   		session.setAttribute("accessCount", accessCount); 

                i=accessCount;

                int flag=0;
                rs=stmt.executeQuery("SELECT * FROM IPARIKH.Question where Ques_no='"+i+"'");
                while(rs.next())
                {
                    if(i>=1 && i<=10)
                    {
                %>  <form action="Test3.jsp">
               <%       
                    }
                    else
                    {
                   %>
                    <jsp:forward page="Useraccount.jsp"></jsp:forward>

                      <%
                     }

            String testid=rs.getString(2);
            int quesno=rs.getInt(3);
            String quesdesc=rs.getString(4);
            String o1=rs.getString(5);
            String o2=rs.getString(6);
            String o3=rs.getString(7);
            String o4=rs.getString(8);
            int answer=rs.getInt(9);
       
       %>  
       <table>
        <tr><td colspan=2>
                <%=quesno%>.  <%=quesdesc%></td></tr>
        
        
        <tr>
        <td><input type=radio name=optn value="1"></td><td><%=o1%></td></tr>
        <tr>  
        <td><input type=radio name=optn value="2"></td><td><%=o2%></td></tr>
        <tr>  
        <td><input type=radio name=optn value="3"></td><td><%=o3%></td></tr>
        
          <tr>  <td><input type=radio name=optn value="4"></td><td><%=o4%></td></tr>
          
        
        
       <tr><td><input type=submit value=Submit name=Submit></td></tr>
  </form>
<%
           session.setAttribute("ans", answer);
           Integer count = (Integer)session.getAttribute("cnt");
           out.println(count);
                }
 %>
 
 </table>
 
 <%          
        }
        catch(Exception e)
          {
               out.println(e.toString());
          }

    %>
        </body>
</html>
