<!DOCTYPE html>

<html>

<head>
  <title>BYC Forgot2</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
  <link href="Style.css" rel="stylesheet">
</head>


<body>

<!-- Forgot Password Page -->
<div id="page">
<link href='http://fonts.googleapis.com/css?family=Anaheim' rel='stylesheet' type='text/css'>

  <table>
    <tr>
            <td align="middle"> 
      <h3>Build your Career !</h3>
      </td>
 </td>
    </tr>

      <tr><td>
        <form method="post" action="Forgot3.jsp" class="form_1">

        <div class="field_wrap">
          <label>Security Question:</label>&nbsp;&nbsp;
          <input type="text" placeholder="" value="<%= session.getAttribute("sq") %>" name="fname"><br/>

          <label>Security Answer:</label>&nbsp;&nbsp;
          <input type="text" placeholder="Type your answer here" name="sec-a"><br/>

        </div>  
   
        <div class="submit_form">
          <input type="submit" name="submit" value="Enter">
        </div>

        </form>
        </td>
    </tr>
  </table>
</div>
 
</body>
</html>
