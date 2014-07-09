<%-- 
    Document   : Test3
    Created on : 6 Apr, 2014, 11:39:31 PM
    Author     : ISHANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%      
 String a1=request.getParameter("optn");
 int radio=Integer.parseInt(a1);
 //out.println("radio value"+a1);
 Integer answer1 = (Integer)session.getAttribute("ans");
  //out.println("answer value"+answer1);
Integer acccount1 = (Integer)session.getAttribute("accessCount");
 int cnt=0;
 
    if (acccount1 == 1) 
    {
    	if(radio==answer1)
       {
            cnt++;
            session.setAttribute("cnt", cnt);
            //out.println("first cnt"+cnt);
            //marks= Integer.toString(cnt);
       }
    } 
    else if(acccount1 > 1 && acccount1 <=9)
    {
        if(radio==answer1)
       {
           Integer cnt1 = (Integer)session.getAttribute("cnt");
           //out.println("first cnt1"+cnt1);
           cnt1++;
           session.setAttribute("cnt", cnt1);
            //marks= Integer.toString(cnt);
           //out.println("second cnt1"+cnt1);
       }	
    }
    else if(acccount1 == 10)
    {
        if(radio==answer1)
       {
           Integer cnt1 = (Integer)session.getAttribute("cnt");
           //out.println("first cnt1"+cnt1);
           cnt1++;
           session.setAttribute("cnt", cnt1);
            //marks= Integer.toString(cnt);
           //out.println("second cnt1"+cnt1);
       }
     %>   
      <jsp:forward page="Result.jsp"/> 
    <%
       
    }
 
    
       %>    

       <jsp:forward page="Test2.jsp"/> 
    </body>
</html>
