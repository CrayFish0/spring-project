<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${pageTitle}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portal.css">
</head>
<body class="portal-body">
    <main class="dashboard-shell">
        <div class="dashboard-container" style="max-width: 860px;">
            <section class="dashboard-card">
                <div class="section-title">
                    <h2>${pageTitle}</h2>
                    <p>Update the user profile details below and save the record when everything is ready.</p>
                </div>

                <form action="${formAction}" method="post">
                    <c:if test="${not empty userEntity.id}">
                        <input type="hidden" name="id" value="${userEntity.id}">
                    </c:if>

                    <div class="form-stack">
                        <div>
                            <label for="name" class="portal-label">Full Name</label>
                            <input id="name" type="text" class="portal-input" name="name" value="${userEntity.name}" placeholder="Enter full name" required>
                        </div>

                        <div>
                            <label for="username" class="portal-label">Username</label>
                            <input id="username" type="text" class="portal-input" name="username" value="${userEntity.username}" placeholder="Enter username" required>
                        </div>

                        <div>
                            <label for="email" class="portal-label">Email</label>
                            <input id="email" type="email" class="portal-input" name="email" value="${userEntity.email}" placeholder="name@company.com" required>
                        </div>

                        <div>
                            <label for="password" class="portal-label">Password</label>
                            <input id="password" type="text" class="portal-input" name="password" value="${userEntity.password}" placeholder="Enter password" required>
                        </div>
                    </div>

                    <div class="form-actions mt-4">
                        <button type="submit" class="portal-btn">Save User</button>
                        <a href="/users" class="portal-btn-ghost">Cancel</a>
                    </div>
                </form>
            </section>
        </div>
    </main>
</body>
</html>
