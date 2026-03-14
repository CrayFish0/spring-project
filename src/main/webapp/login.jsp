<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body bgcolor="powderblue">
	<h2 style="text-align:center;">Login</h2>
	<c:if test="${not empty msg}">
		<p style="color:green; text-align:center">${msg}</p>
	</c:if>
	<c:if test="${not empty error}">
		<p style="color:red; text-align:center">${error}</p>
	</c:if>
	<form action="login" method="post">
		<table align="center" border=1 style="margin-top: 20px">
			<tr>
				<td>User:</td>
				<td><input type="text" name="username"></input></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></input></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></input></td>
				<td><input type="reset" value="Reset"></input></td>
			</tr>
		</table>
	</form>
	<p style="text-align:center; margin-top: 20px">
		Don't have an account? <a href="register">Register</a> | <a href="forgot">Forgot Password</a>
	</p>
</body>
</html>