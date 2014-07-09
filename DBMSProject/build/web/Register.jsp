<!DOCTYPE html>

<html>

<head>
  <title>BYC Signup</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
  <link href="Style.css" rel="stylesheet">
</head>

<body>

<!-- Signup Page -->
<div id="page">
<link href='http://fonts.googleapis.com/css?family=Anaheim' rel='stylesheet' type='text/css'>

  <table>
    <tr>
      <td align="middle"> 
        <h3>Build your Career !</h3>
      </td>

    </tr>

      <tr><td>
        <form method="post" action="Register1.jsp" class="form_1">

        <div class="field_wrap">
          <label>First Name:</label>&nbsp;&nbsp;
          <input type="text" placeholder="First Name" name="fname"><br/>

          <label>Last Name:</label>&nbsp;&nbsp;
          <input type="text" placeholder="Last Name" name="lname"><br/>

          <label>Contact:</label>&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" placeholder="Most used number" name="phone"><br/>

          <label>Birthdate:</label>&nbsp;&nbsp;
          <input type="date" placeholder="Date of Birth" name="dob"><br/>

          <label>Email:</label>&nbsp;&nbsp;
          <input type="email" placeholder="Most used email id" name="email"><br/>

          <label>Password:</label>&nbsp;&nbsp;
          <input type="password" placeholder="Password" name="password"><br/>

          <label>Confirm Password:</label>&nbsp;&nbsp;
          <input type="password" placeholder="Retype password" name="cpassword"><br/>

          <label>Security Question:</label>&nbsp;&nbsp;
            <select name="sec-q">
              <option value="">Select your Security Question</option>
              <option value="What was the name of your first pet?">What was the name of your first pet?</option>
              <option value="Which was your first vehicle?">Which was your first vehicle?</option>
              <option value="What was the name of your first school?">What was the name of your first school?</option>
              <option value="What is the name of your hometown?">What is the name of your hometown?</option>
            </select>

          <label>Security Answer:</label>&nbsp;&nbsp;
          <input type="text" placeholder="Type your answer here" name="sec-a"><br/>

        </div>  
   
        <div class="submit_form">
          <input type="submit" name="submit" value="Create!">
        </div>

        </form>
        </td>
    </tr>
  </table>
</div>

<script language="javascript">
 function validateForm()
{
  var x=document.forms["myForm"]["fname"].value;
  if (x==null || x=="")
  {
  alert("First name must be filled out");
  return false;
  }
  var y=document.forms["myForm"]["lname"].value;
  if (y==null || y=="")
  {
  alert("Last name must be filled out");
  return false;
  }
  var z=document.forms["myForm"]["phone"].value;
  if (z==null || z=="")
  {
  alert("Phone number must be filled out");
  return false;
  }
  else if (typeof(z)!= "number")
      {
          alert("Phone number must contain only numbers");
      }
  var a=document.forms["myForm"]["dob"].value;
  if (a==null || a=="")
  {
  alert("Birthdate must be filled out");
  return false;
  }
  var b=document.forms["myForm"]["username"].value;
    if (b==null || b=="")
  {
  alert("User name must be filled out");
  return false;
  }
  
  var c=document.forms["myForm"]["password"].value;
    if (c==null || c=="")
  {
  alert("Password must be filled out");
  return false;
  }

  var d=document.forms["myForm"]["cpassword"].value;
    if (d==null || d=="")
  {
  alert("Confirm Password");
  return false;
  }
  var e=document.forms["myForm"]["password"].value;
  var f=document.forms["myForm"]["cpassword"].value;
  if(e!=f)
  {
      alert("Passwords must match..!");
      return false;
  }
    var g=document.forms["myForm"]["email"].value;
    var atpos=g.indexOf("@");
    var dotpos=g.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
 
}


    </script>
 
</body>
</html>
