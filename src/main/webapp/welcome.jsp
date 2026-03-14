<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<c:if test="${not empty user}">
		<h2>Welcome, ${user}!</h2>
	</c:if>
	<c:if test="${not empty msg}">
		<p style="color:green">${msg}</p>
	</c:if>
	<p>You have successfully logged in.</p>
	<form action="/" method="get">
		<button type="submit">Logout</button>
	</form>
</body>
</html>