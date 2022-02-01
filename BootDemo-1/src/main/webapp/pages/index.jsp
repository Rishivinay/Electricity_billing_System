<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styleLogin.css">
<script src="loginpage.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

 ${errorKey}
 <div class="container">
 <form action="userLogin" method="post" onsubmit="return validate()">
 	<div class="title">Login</div>
 	
        <!--username-->

        <div class="input-box underline">
          <input id="user" name="userName" type="text" placeholder="Enter Your Username" autocomplete="off" pattern="[A-Za-z\d]{6,12}" title="Username must be 6 and 12 charaters in length and contain only letters and numbers." required>
          <span id="username" class="message"></span>
        </div>

        <!--password-->
        
        <div class="input-box underline">
          <input id="pass" name="password" type="password" placeholder="Enter Your Password" autocomplete="off">
          <span id="password" class="message"></span>
        </div>
        
        <div class="input-box button">
          <input type="submit" name="" value="Login">
        </div>
</form>
  <!-- <div class="option">or Connect With Social Media</div>
        <div class="twitter">
          <a href="#"><i class="fab fa-twitter"></i>Sign in With Twitter</a>
        </div>
        <div class="facebook">
          <a href="#"><i class="fab fa-facebook-f"></i>Sign in With Facebook</a>
        </div>-->
        </div> 
</body>
</html>