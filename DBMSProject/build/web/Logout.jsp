<%-- 
    Document   : Logout
    Created on : Apr 5, 2013, 5:45:52 PM
    Author     : Lipee
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
   
 <head>
       
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
   <title>JSP Page</title>
 
       <link rel="stylesheet" href="default.css">
 
   </head>
   
 <body>
       
 <%
    session.invalidate();
   
 response.sendRedirect("index.jsp");
%>

    
</body>

</html>
