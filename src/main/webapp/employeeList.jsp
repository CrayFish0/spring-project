<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Directory | Capgemini Training Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portal.css">
</head>
<body class="portal-body">
    <main class="dashboard-shell">
        <div class="dashboard-container">
            <section class="dashboard-hero">
                <div class="hero-meta">
                    <span class="meta-pill">Employee Directory</span>
                    <span class="meta-pill">Operations</span>
                </div>
                <h1>Keep your employee records clear, current, and ready for action.</h1>
                <p>Review all employee profiles, update details, and manage records from one consistent workspace.</p>
                <div class="hero-actions mt-4">
                    <a href="/employee/add" class="portal-btn">Add Employee</a>
                    <a href="/" class="portal-btn-ghost">Back to Home</a>
                </div>
            </section>

            <section class="table-card">
                <div class="section-title">
                    <h2>Employee records</h2>
                    <p>Each row gives you quick access to edit and delete actions.</p>
                </div>

                <c:choose>
                    <c:when test="${empty employees}">
                        <div class="empty-state">
                            <h3>No employees found</h3>
                            <p>Add the first employee to start building your directory.</p>
                            <a href="/employee/add" class="portal-btn">Create First Employee</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="table-responsive">
                            <table class="table portal-table align-middle">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Employee</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Contact</th>
                                        <th scope="col">City</th>
                                        <th scope="col" class="text-end">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="emp" items="${employees}">
                                        <tr>
                                            <td><span class="user-id-chip">#${emp.id}</span></td>
                                            <td>
                                                <p class="user-name mb-0">${emp.empName}</p>
                                                <p class="table-subtle mb-0">EMP-${emp.empId}</p>
                                            </td>
                                            <td><a class="email-link" href="mailto:${emp.empEmail}">${emp.empEmail}</a></td>
                                            <td>${emp.empContactNo}</td>
                                            <td>${emp.empCity}</td>
                                            <td class="text-end">
                                                <div class="table-actions justify-content-end">
                                                    <a href="/employee/edit/${emp.id}" class="portal-btn-ghost portal-btn-sm">Edit</a>
                                                    <a href="/employee/delete/${emp.id}" class="portal-btn-danger portal-btn-sm" onclick="return confirm('Delete this employee?');">Delete</a>
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