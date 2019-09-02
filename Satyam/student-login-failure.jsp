<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<meta name="viewport" content="width=device-width,inital-scale=1.0">
	<script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
      function validate(){
        var n=document.forms["form2"]["phone"].value;
        var age = document.forms["form2"]["age"].value;
        var pass=document.forms["form2"]["password"].value;
        var pass2=document.forms["form2"]["password2"].value;
        if(n<1000000000||n>9999999999){
          alert("Number must be 10 digits");
          return false;
        }
        if(age<=0){
            alert("Invalid Age");
            return false;
        }
        if(pass.length<5){
          alert("Password must be of atleast 5 characters");
          return false;
        }
        if(pass!=pass2){
          alert("Confirm Password Does not match");
          return false;
        }

        if(confirm("Are you sure you want to submit?")){ return true; }
        else{ return false; }
      }
    </script>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><img src="logo.jpg" class="logo"> UKP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin_login.jsp">Admin</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="student_login.jsp">Student</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="container-fluid">
	<div class="row loginbox">
    <div class="col-sm-2"></div>
		<div class="col-sm-4"> 
      <h2 class="logintop"><i class="fa fa-sign-in" aria-hidden="true"><Strong> Student Log In </strong></i></h2>
      <% String s = (String)session.getAttribute("LoginIn");
        if(s!=null)
       { %>
      <h2><p style="color:red"><Strong><%= s %></strong></p></h2>
      <%
          session.setAttribute("LoginIn",null);
          }
      %>
      <form action="Login" name="form1" method="post" class="logininput">
          <input type="hidden" name="whocalling" value="student-login-failure">
        <input type="email" name="email" placeholder="Email" class="logininputbox"><br>
        <input type="password" name="password" placeholder="Password" class="logininputbox"><br>
        <input type="submit" value="Login" style="background: #3fc73ffa;border: green;padding: 5px;border-radius: 20%;"><br><br>
        <input type="reset" value="Clear" style="background: #fd1515fa;border: red;padding: 5px;border-radius: 20%;"><br><br>
	<a href = "frgtpswd.jsp">Forgot Password?</a>	
      </form></div>
        <div class="col-sm-4"> 
          <h2 class="logintop"><i class="fa fa-sign-in" aria-hidden="true"><Strong> Sign Up </strong></i></h2>
          <%    String m = (String)session.getAttribute("msg");
                if(m!=null){
          %>
          <h2><p style="color:red"><Strong><%= m %></strong></p></h2>
          <% session.setAttribute("msg",null);}%>
          <form action="Register" name="form2" method="post" enctype='multipart/form-data' class="logininput">
              <input type="text" name="name" placeholder="Name" class="logininputbox"><br>
              <input type="email" name="email" placeholder="Email" class="logininputbox"><br>
              <input type="number" name="phone" placeholder="Phone Number" class="logininputbox"><br>
              <input type="number" name="age" placeholder="Age" class="logininputbox"><br>
              <font color="white"><label  for="photo" class="col-lg-3 control-label">Photo:</label></font>
              <font color="white"><input type="file" name="photo" class="logininputbox"></font>
              <input type="password" name="password" placeholder="Password" class="logininputbox"><br>
              <input type="password" name="password2" placeholder="Confirm Password" id="pwd2" class="logininputbox"><br>
              <input type="submit" name="submit" value="Submit" style="background: #3fc73ffa;border: green;padding: 5px;border-radius:20%;" onclick="return validate()">
              <input type="reset" name="reset" value="Reset" style="background: #fd1515fa;border: red;padding: 5px;border-radius: 20%;">
          </form>
        </div>
    <div class="col-sm-2"></div>
	</div>
</div>
<footer style="background-color: burlywood">
	<div class="row foot">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<center><h3>Follow Us :
		<i class="fa fa-facebook-official" aria-hidden="true"></i>
		<i class="fa fa-twitter" aria-hidden="true"></i>
		<i class="fa fa-instagram" aria-hidden="true"></i></h3></center> 
		</div>
 		<div class="col-sm-4"></div>
	</div>
	<div class="row foot">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<center> <h6>Copyright<i class="fa fa-copyright" aria-hidden="true"></i> 2019 UKP.All Rights Reserved</h6> </center> 
		</div>
 		<div class="col-sm-4"></div>
	</div>
</footer>      
</body>
</html>