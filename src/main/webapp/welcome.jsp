<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | Capgemini Training Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portal.css">
</head>
<body class="portal-body">

    <!-- Top Navigation -->
    <nav class="portal-nav">
        <div class="portal-nav-inner">
            <a href="/employee/all" class="nav-brand">
                <span class="nav-brand-badge">C</span>
                Capgemini Portal
            </a>
            <div class="nav-links">
                <a href="/employee/all" class="nav-link">Employees</a>
                <a href="/users" class="nav-link">Users</a>
                <a href="/logout" class="nav-link nav-logout">Logout</a>
            </div>
        </div>
    </nav>

    <main class="dashboard-shell">
        <div class="dashboard-container">
            <section class="dashboard-hero">
                <div class="hero-meta">
                    <span class="meta-pill">Portal Dashboard</span>
                    <span class="meta-pill">Secure Session Active</span>
                </div>
                <c:if test="${not empty user}">
                    <h1>Welcome back, ${user}.</h1>
                </c:if>
                <c:if test="${empty user}">
                    <h1>Welcome to the training portal.</h1>
                </c:if>
                <p>You are now inside the administration workspace. Manage employees, review accounts, and keep the portal data current.</p>

                <c:if test="${not empty msg}">
                    <div class="alert portal-alert alert-success mt-4 mb-0" role="alert">${msg}</div>
                </c:if>

                <div class="hero-actions mt-4">
                    <a href="/employee/all" class="portal-btn">Employee Directory</a>
                    <a href="/users" class="portal-btn-ghost">User Management</a>
                </div>
            </section>

            <!-- Live Stats -->
            <section class="metrics-grid">
                <article class="metric-card">
                    <p class="metric-label">Employees</p>
                    <p class="metric-value">${empCount}</p>
                    <p class="metric-copy">Total employee records in the system.</p>
                    <a href="/employee/all" class="text-link mt-2 d-inline-block">View directory →</a>
                </article>
                <article class="metric-card">
                    <p class="metric-label">Portal Users</p>
                    <p class="metric-value">${userCount}</p>
                    <p class="metric-copy">Registered admin and portal user accounts.</p>
                    <a href="/users" class="text-link mt-2 d-inline-block">Manage users →</a>
                </article>
                <article class="metric-card">
                    <p class="metric-label">Quick Action</p>
                    <p class="metric-value">+ Add</p>
                    <p class="metric-copy">Register a new employee or portal user right away.</p>
                    <div class="hero-actions mt-2">
                        <a href="/employee/add" class="text-link">New Employee</a>
                        <a href="/users/new" class="text-link">New User</a>
                    </div>
                </article>
            </section>
        </div>
    </main>
</body>
</html>