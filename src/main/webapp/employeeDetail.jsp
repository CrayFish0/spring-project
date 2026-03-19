<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Profile | Capgemini Training Portal</title>
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
                <a href="/employee/all" class="nav-link active">Employees</a>
                <a href="/users" class="nav-link">Users</a>
                <a href="/logout" class="nav-link nav-logout">Logout</a>
            </div>
        </div>
    </nav>

    <main class="dashboard-shell">
        <div class="dashboard-container" style="max-width: 880px;">
            <section class="detail-card">
                <div class="detail-card-header">
                    <div class="detail-avatar">
                        ${fn:substring(employee.empName, 0, 1)}
                    </div>
                    <div>
                        <div class="hero-meta mb-2">
                            <span class="meta-pill">Employee Profile</span>
                            <span class="meta-pill stat-pill">EMP-${employee.empId}</span>
                        </div>
                        <h1 class="detail-name">${employee.empName}</h1>
                        <p class="detail-sub">${employee.empEmail}</p>
                    </div>
                </div>

                <div class="detail-fields-grid">
                    <div class="detail-field">
                        <span class="detail-field-label">Employee ID</span>
                        <span class="detail-field-value">EMP-${employee.empId}</span>
                    </div>
                    <div class="detail-field">
                        <span class="detail-field-label">Full Name</span>
                        <span class="detail-field-value">${employee.empName}</span>
                    </div>
                    <div class="detail-field">
                        <span class="detail-field-label">Email Address</span>
                        <span class="detail-field-value">
                            <a href="mailto:${employee.empEmail}" class="email-link">${employee.empEmail}</a>
                        </span>
                    </div>
                    <div class="detail-field">
                        <span class="detail-field-label">Contact Number</span>
                        <span class="detail-field-value">${employee.empContactNo}</span>
                    </div>
                    <div class="detail-field">
                        <span class="detail-field-label">City</span>
                        <span class="detail-field-value">${employee.empCity}</span>
                    </div>
                    <div class="detail-field">
                        <span class="detail-field-label">Record ID</span>
                        <span class="detail-field-value">#${employee.id}</span>
                    </div>
                </div>

                <div class="form-actions mt-4">
                    <a href="/employee/edit/${employee.id}" class="portal-btn">Edit Employee</a>
                    <a href="/employee/all" class="portal-btn-ghost">Back to Directory</a>
                    <a href="/employee/delete/${employee.id}" class="portal-btn-danger"
                       onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                </div>
            </section>
        </div>
    </main>
</body>
</html>
