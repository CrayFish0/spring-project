<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Employee | Capgemini Training Portal</title>
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
        <div class="dashboard-container" style="max-width: 860px;">
            <section class="dashboard-card">
                <div class="section-title">
                    <h2>Edit Employee</h2>
                    <p>Update the employee details below and save your changes.</p>
                </div>

                <form action="/employee/update" method="post">
                    <input type="hidden" name="id" value="${employee.id}">

                    <div class="form-stack">
                        <div>
                            <label for="empId" class="portal-label">Employee Number</label>
                            <input id="empId" type="number" class="portal-input" name="empId" value="${employee.empId}" required>
                        </div>

                        <div>
                            <label for="empName" class="portal-label">Employee Name</label>
                            <input id="empName" type="text" class="portal-input" name="empName" value="${employee.empName}" required>
                        </div>

                        <div>
                            <label for="empEmail" class="portal-label">Email</label>
                            <input id="empEmail" type="email" class="portal-input" name="empEmail" value="${employee.empEmail}" required>
                        </div>

                        <div>
                            <label for="empContactNo" class="portal-label">Contact Number</label>
                            <input id="empContactNo" type="text" class="portal-input" name="empContactNo" value="${employee.empContactNo}" required>
                        </div>

                        <div>
                            <label for="empCity" class="portal-label">City</label>
                            <input id="empCity" type="text" class="portal-input" name="empCity" value="${employee.empCity}" required>
                        </div>
                    </div>

                    <div class="form-actions mt-4">
                        <button type="submit" class="portal-btn">Update Employee</button>
                        <a href="/employee/all" class="portal-btn-ghost">Cancel</a>
                    </div>
                </form>
            </section>
        </div>
    </main>
</body>
</html>
