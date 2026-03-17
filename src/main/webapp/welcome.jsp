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
                <p>You are now inside the administration workspace. From here you can review accounts, maintain profile records, and keep the portal data current.</p>

                <c:if test="${not empty msg}">
                    <div class="alert portal-alert alert-success mt-4 mb-0" role="alert">${msg}</div>
                </c:if>

                <div class="hero-actions mt-4">
                    <a href="/users" class="portal-btn">Open User Directory</a>
                    <form action="/" method="get">
                        <button type="submit" class="portal-btn-danger">Logout</button>
                    </form>
                </div>
            </section>

            <section class="metrics-grid">
                <article class="metric-card">
                    <p class="metric-label">Workspace</p>
                    <p class="metric-value">Admin</p>
                    <p class="metric-copy">Access to registration, editing, and user maintenance workflows.</p>
                </article>
                <article class="metric-card">
                    <p class="metric-label">Experience</p>
                    <p class="metric-value">Unified</p>
                    <p class="metric-copy">A consistent visual system across authentication and management pages.</p>
                </article>
                <article class="metric-card">
                    <p class="metric-label">Next Step</p>
                    <p class="metric-value">Users</p>
                    <p class="metric-copy">Go directly into the directory to create, edit, or remove user records.</p>
                </article>
            </section>
        </div>
    </main>
</body>
</html>