<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<h2>Register</h2>
	<c:if test="${not empty error}">
		<p style="color:red">${error}</p>
	</c:if>
	<form action="/register" method="post">
		<label>Username: <input type="text" name="username" required /></label><br />
		<label>Password: <input type="password" name="password" required /></label><br />
		<button type="submit">Register</button>
	</form>
	<p><a href="/">Back to Login</a></p>
</body>
</html>