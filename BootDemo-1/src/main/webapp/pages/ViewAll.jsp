<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<style>
@import url("Sample.css"); 
</style> 
<meta charset="ISO-8859-1">
<title>View All</title>
</head>
<body>

<table border="1" id="customers">
<tr align="center">
<th colspan="12"><h1>User Details</h1></th>
</tr>
<tr>
<th>First Name </th>
<th>UserName </th>
<th>Email Id</th>
<th>Phone Number</th>
<th>Password </th>
<th>Date Of Birth</th>
<th>Address1</th>
<th>Address2</th>
<th>City </th>
<th>State </th>
<th>Gender </th>
<th>Action</th>
</tr>
<c:forEach items="${listKey }" var="user" >
<tr>
<td>${user.firstName }</td>
<td>${user.userName }</td>
<td>${user.email }</td>
<td>${user.phoneNumber }</td>
<td>${user.password}</td>
<td>${user.dob}</td>
<td>${user.address1}</td>
<td>${user.address2}</td>
<td>${user.city}</td>
<td>${user.state}</td>
<td>${user.gender}</td>

<td>
<button class="button"><a href="${pageContext.request.contextPath }/deleteuser/${user.id}">Delete</a></button>
<button class="button"><a href="updateUser?id=${user.id}">Update</a></button>
</td>
</tr>
</c:forEach>

</table>
</body>
</html>