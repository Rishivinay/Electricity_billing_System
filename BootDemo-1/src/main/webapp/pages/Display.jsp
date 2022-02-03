<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url("Sample.css");
</style> 
<meta charset="ISO-8859-1">
<title>Display Page</title>
</head>
<body>
	<%-- Welcome ${name} --%>


	<table id="customers">

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
		</tr>
		<tr>
			<td>${loginKey.firstName }</td>
<td>${loginKey.userName }</td>
<td>${loginKey.email }</td>
<td>${loginKey.phoneNumber }</td>
<td>${loginKey.password}</td>
<td>${loginKey.dob}</td>
<td>${loginKey.address1}</td>
<td>${loginKey.address2}</td>
<td>${loginKey.city}</td>
<td>${loginKey.state}</td>
<td>${loginKey.gender}</td>
		</tr>
	</table>
</body>
</html>