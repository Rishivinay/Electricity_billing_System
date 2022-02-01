<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
 <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="styleHome.css">
</head>
<body>
<header>
  <div class="wrapper">
   <div class="logo">
  <h2>EBills</h2>
   </div>
   <ul class="nav-area">
   <!--  <li><a href="#">Home</a></li> -->
    <li><a href="AboutUs">About Us</a></li>
    <li><a href="profile">About Developers</a></li>
    <li><a href="ebill">Bill Calculation</a></li>
    <li><a href="saveElectricity">Tips</a></li>
    <li><a href="contactUs">Contact Us</a></li>
    <li><a href="map">Reach Us</a></li>
    <li><a href="${pageContext.servletContext.contextPath}/logout">Logout</a></li>
   </ul>
  </div>
  <div class="welcome-text">
   <h1>
    Calculate EBills <span>Anytime Anywhere</span></h1>
  <!-- <a href="#">Contact US</a> --> 
  </div>
 </header>

</body>
</html>