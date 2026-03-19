<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Directory | Capgemini Training Portal</title>
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
                <a href="/users" class="nav-link active">Users</a>
                <a href="/logout" class="nav-link nav-logout">Logout</a>
            </div>
        </div>
    </nav>

    <main class="dashboard-shell">
        <div class="dashboard-container">
            <section class="dashboard-hero">
                <div class="hero-meta">
                    <span class="meta-pill">User Directory</span>
                    <span class="meta-pill">Operational View</span>
                </div>
                <h1>Manage every portal account from one clear workspace.</h1>
                <p>Review active records, update account details, and create new users with a cleaner administration experience built for day-to-day work.</p>
                <div class="hero-actions mt-4">
                    <a href="/users/new" class="portal-btn">+ Add New User</a>
                    <a href="/employee/all" class="portal-btn-ghost">Employee Directory</a>
                </div>
            </section>

            <c:if test="${not empty error}">
                <div class="alert portal-alert alert-danger mb-4" role="alert">${error}</div>
            </c:if>

            <section class="table-card">
                <div class="section-title">
                    <h2>Account records</h2>
                    <p>All registered users are listed below with direct edit and delete actions.</p>
                </div>

                <c:choose>
                    <c:when test="${empty users}">
                        <div class="empty-state">
                            <h3>No users found</h3>
                            <p>Create the first user to start building the training portal directory.</p>
                            <a href="/users/new" class="portal-btn">Create First User</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="table-responsive">
                            <table class="table portal-table align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Profile</th>
                                        <th scope="col">Email</th>
                                        <th scope="col" class="text-end">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="u" items="${users}">
                                        <tr>
                                            <td><span class="user-id-chip">#${u.id}</span></td>
                                            <td>
                                                <p class="user-name">${u.name}</p>
                                                <p class="table-subtle mb-0">@${u.username}</p>
                                            </td>
                                            <td>
                                                <a class="email-link" href="mailto:${u.email}">${u.email}</a>
                                            </td>
                                            <td class="text-end">
                                                <div class="table-actions justify-content-end">
                                                    <a href="/users/edit/${u.id}" class="portal-btn-ghost portal-btn-sm">Edit</a>
                                                    <a href="/users/delete/${u.id}" class="portal-btn-danger portal-btn-sm"
                                                       onclick="return confirm('Delete this user?');">Delete</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </c:otherwise>
                </c:choose>
            </section>
        </div>
    </main>
</body>
</html>
