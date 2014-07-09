	<html>

	<head>
	  
<title>BYC User Account</title>

	  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
	
  <link href="Style.css" rel="stylesheet">

	</head>


	<body>

<div id="page-new">


	<!-- 4-H masthead -->

	
<table style="width: 100%; margin-bottom:8px;">
	  
  
	  <tr>
	
	<td align="middle" width="400" valign="bottom">

	    	<h1>Build your Career !</h1> 
	
	</td>

	  </tr>

 </tr>


<tr> <td style="color:white"> Hello user <%=session.getAttribute("username")%>
</td>
</tr>


	
  <tr>
	  	
<td>
	  	
	<h2><a href="Logout.jsp">Logout</a></h2>

	
  	</td>

	  </tr>
	 
 
	</table>


	<div id="maincol">

	
<table>
	
<tr>
	   
 <td>
		
<div class="clip-circle box-shad circle1">
	
		<a href="Test1.jsp">
<center><img src="logo/main1.gif" alt="test" height="140px" width="150px"></center></a></div>

		<div class="clip-circle box-shad circle2">
			
<a href="Search.html">
<center><img src="logo/main2.jpg" alt="search-jobs" height="220px" width="160px"></center></a></div>
		<div class="clip-circle box-shad circle3">
			<a href="Score.html"><center><img src="logo/main3.jpg" alt="score" height="160" width="150"></center></a></div>
		<div class="clip-circle box-shad circle4">
			<a href="Leader.html"><center><img src="logo/main4.jpg" alt="leaderboard" height="150px" width="170px"></center></a></div>
		<div class="clip-circle box-shad circle5">
			<a href="expert1.jsp"><center><img src="logo/main5.png" alt="expert" height="175px" width="165px"></center></a></div>
	    </td>
	</tr>
	</table>
	</div>

		
	</div>
	</body>
	</html>