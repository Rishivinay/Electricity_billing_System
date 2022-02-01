<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
   
   <link rel="stylesheet"  href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="register.js"></script>
<title>Registration Page</title>
</head>
<body>

	
	 <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form  action="userRegistration" method="post" onsubmit="return validation()" autocomplete="off" >
        <div class="user-details">
        
        <!---------------fullname-------------------------------------------------->

          <div class="input-box">
            <span class="details">Full Name</span>
            <input id="name" name="firstName" type="text" placeholder="Enter your name" required>
            <span id="uname" class="error-message"></span>
          </div>

          <!-------------------------username--------------------------------------------->

          <div class="input-box">
            <span class="details">Username</span>
            <input id="username" name="userName" type="text" placeholder="Enter your username" autocomplete="off" pattern="[A-Za-z\d]{6,12}" title="Username must be 
             6 and 12 charaters in length and contain only letters and numbers." required>
            <span id="user" class="error-message"></span>
          </div>

          <!------------------------------email------------------------------------------>

          <div class="input-box">
            <span class="details">Email</span>
            <input id="uemail" name="email" type="email" placeholder="Enter your email" required>
            <span id="email" class="error-message"></span>
          </div>

          <!--------------------mobile number------------------------------------>

          <div class="input-box">
            <span class="details">Phone Number</span>
            <input id="mobile" name="phoneNumber" type="text" placeholder="Enter your number" pattern="[6-9]\d{9}" title="Enter a valid mobile number." required>
            <span id="mobileNumber" class="error-message"></span>
          </div>

          <!----------------password------------------------------------>

          <div class="input-box">
            <span class="details">Password</span>
            <input id="pass" name="password" type="text" placeholder="Enter your password" autocomplete="off">
            <span id="pwd" class="error-message"></span>
          </div>

          <!----------------DOB------------------------------------>

          <div class="input-box">
            <span class="details">DOB</span>
            <input type="date" name="dob" placeholder="DOB" required>
          </div>

          <!----------------address1------------------------------------>

          <div class="input-box">
            <span class="details">Address1</span>
            <input id="address1" name="address1" type="text" placeholder="Address1" required>
            <span id="addr1" class="error-message"></span>
          </div>

          <!----------------address2------------------------------------>

          <div class="input-box">
            <span class="details">Address2</span>
            <input id="address2" name="address2" type="text" placeholder="Address2" required>
            <span id="addr2" class="error-message"></span>
          </div>

          <!----------------city------------------------------------>

          <div class="input-box">
            <span class="details">City</span>
            <input type="text" name="city" placeholder="City" id="city" required>
            <span id="city1" class="error-message"></span>
          </div>

          <!----------------state------------------------------------>

          <div class="input-box">
            <span class="details">State</span>
            <input type="text" name="state" placeholder="State" id="state" required>
            <span id="state1" class="error-message"></span>
          </div>
        </div>

        <!----------------gender------------------------------------>

        <div class="gender-details">
          <input type="radio" name="gender" value="Male" id="dot-1">
          <input type="radio" name="gender" value="Female" id="dot-2">
          <input type="radio" name="gender" value="Others" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
              <span class="dot one"></span>
              <span class="gender">Male</span>
            </label>
            <label for="dot-2">
              <span class="dot two"></span>
              <span class="gender">Female</span>
            </label>
            <label for="dot-3">
              <span class="dot three"></span>
              <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
<!--           <a href="Login2.html"></a> -->
        </div>
      </form>
    </div>
  </div>
	
	
<!-- 	<form action="userRegistration" method="post"> -->
<!-- 		<div class="user-details"> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Full Name</span> -->
<!--             <input type="text" name="firstName" placeholder="Enter your name" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Username</span> -->
<!--             <input type="text" name="userName" placeholder="Enter your username" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Email</span> -->
<!--             <input type="text" name="email" placeholder="Enter your email" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Phone Number</span> -->
<!--             <input type="text" name="phoneNumber" placeholder="Enter your number" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Password</span> -->
<!--             <input type="text" name="password" placeholder="Enter your password" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">DOB</span> -->
<!--             <input type="date" name="dob" placeholder="DOB" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Address1</span> -->
<!--             <input type="text" name="address1" placeholder="Address1" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">Address2</span> -->
<!--             <input type="text" name="address1" placeholder="Address2" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">City</span> -->
<!--             <input type="text" name="city" placeholder="City" required> -->
<!--           </div> -->
<!--           <div class="input-box"> -->
<!--             <span class="details">State</span> -->
<!--             <input type="text" name="state" placeholder="State" required> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="gender-details"> -->
<!--           <input type="radio" name="gender" value="Male" id="dot-1"> -->
<!--           <input type="radio" name="gender" value="Female" id="dot-2"> -->
<!--           <input type="radio" name="gender" value="others" id="dot-3"> -->
<!--           <span class="gender-title">Gender</span> -->
<!--           <div class="category"> -->
<!--             <label for="dot-1"> -->
<!--             <span class="dot one"></span> -->
<!--             <span class="gender">Male</span> -->
<!--           </label> -->
<!--           <label for="dot-2"> -->
<!--             <span class="dot two"></span> -->
<!--             <span class="gender">Female</span> -->
<!--           </label> -->
<!--           <label for="dot-3"> -->
<!--             <span class="dot three"></span> -->
<!--             <span class="gender">Prefer not to say</span> -->
<!--             </label> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="button"> -->
<!--           <input type="submit" value="Register"> -->
<!--           <a href="Login2.html"></a> -->
<!--         </div> -->
<!-- 	</form> -->
</body>
</html>