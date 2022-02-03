<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--<link rel="stylesheet" href="style.css">-->
<title>Update Page</title>
</head>
<body>
<h2>Update User Data</h2>
<p>${updatemessage}</p>
<form action="updateUserData"  method="post">

<div class="input-box">
            <span class="details">Id</span>
            <input id="id" name="id" type="text" value="${userKey.id}" readonly="readonly">

          </div>
        <!---------------fullname-------------------------------------------------->

          <div class="input-box">
            <span class="details">Full Name</span>
            <input id="name" name="firstName" type="text" value="${userKey.firstName}" readonly="readonly">

          </div>

          <!-------------------------username--------------------------------------------->

          <div class="input-box">
            <span class="details">Username</span>
            <input id="username" name="userName" type="text" value="${userKey.userName}" readonly="readonly">

          </div>

          <!------------------------------email------------------------------------------>

          <div class="input-box">
            <span class="details">Email</span>
            <input id="uemail" name="email" type="email" value="${userKey.email}">
            
          </div>

          <!--------------------mobile number------------------------------------>

          <div class="input-box">
            <span class="details">Phone Number</span>
            <input id="mobile" name="phoneNumber" type="text" pattern="[6-9]\d{9}" title="Enter a valid mobile number." value="${userKey.phoneNumber}">

          </div>

          <!----------------password------------------------------------>

          <div class="input-box">
            <span class="details">Password</span>
            <input id="pass" name="password" type="text" value="${userKey.password}">
            
          </div>

          <!----------------DOB------------------------------------>

          <div class="input-box">
            <span class="details">DOB</span>
            <input type="date" name="dob" value="${userKey.dob}" readonly="readonly">
          </div>

          <!----------------address1------------------------------------>

          <div class="input-box">
            <span class="details">Address1</span>
            <input id="address1" name="address1" type="text" value="${userKey.address1}">
           
          </div>

          <!----------------address2------------------------------------>

          <div class="input-box">
            <span class="details">Address2</span>
            <input id="address2" name="address2" type="text" value="${userKey.address2}">

          </div>

          <!----------------city------------------------------------>

          <div class="input-box">
            <span class="details">City</span>
            
            <input type="text" name="city" id="city" value="${userKey.city}">

          </div>

          <!----------------state------------------------------------>

          <div class="input-box">
            <span class="details">State</span>
            <input type="text" name="state" id="state" value="${userKey.state}">
           
          </div>
        </div>

        <!----------------gender------------------------------------>

        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" value="${userKey.gender}" readonly="readonly">
          <input type="radio" name="gender" id="dot-2" value="${userKey.gender}" readonly="readonly">
          <input type="radio" name="gender" id="dot-3" value="${userKey.gender}" readonly="readonly">
          
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
          <input type="submit" value="Update">
</form>
</body>
</html>