<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <style>
@import url("Sample.css"); 
</style> -->
<meta charset="ISO-8859-1">
<title>Find Page</title>
</head>
<body style="background-color:rgba(255, 99, 71, 0.5);">
${ek}
<form action="findUser" method="post">
		<table cellpadding="10" cellspacing="10" border=10 align="center" style="background-color:MediumSeaGreen;">
			<tr>
				<td>userName</td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				
				<td colspan="2"><input type="submit" value="findUser"></td>
			</tr>
			</table>
			</form>

</body>
</html>