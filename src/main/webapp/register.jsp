<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register | Capgemini Training Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portal.css">
</head>
<body class="portal-body">
    <main class="portal-shell">
        <section class="auth-card">
            <aside class="auth-brand">
                <div class="brand-mark">
                    <span class="brand-mark-badge">C</span>
                    Capgemini Training Portal
                </div>
                <div class="brand-headline">
                    <span class="eyebrow">Create Access</span>
                    <h1>Bring every learner and administrator into one polished system.</h1>
                    <p>Create secure user access with complete profile details so the portal stays reliable, searchable, and easy to manage.</p>
                </div>
                <ul class="feature-list">
                    <li>
                        <span class="feature-icon">A</span>
                        <span>Capture the essential profile details needed for onboarding and account verification.</span>
                    </li>
                    <li>
                        <span class="feature-icon">B</span>
                        <span>Keep registration aligned with the same visual system used by the rest of the administration portal.</span>
                    </li>
                    <li>
                        <span class="feature-icon">C</span>
                        <span>Reduce friction with a clean form layout, stronger spacing, and clearly defined actions.</span>
                    </li>
                </ul>
            </aside>

            <div class="auth-panel">
                <div class="auth-form-wrap">
                    <h2>Create your account</h2>
                    <p>Register a new portal user with their full name, login credentials, and contact information.</p>

                    <c:if test="${not empty error}">
                        <div class="alert portal-alert alert-danger mb-3" role="alert">${error}</div>
                    </c:if>

                    <form action="/register" method="post">
                        <div class="form-stack">
                            <div>
                                <label class="portal-label" for="name">Full Name</label>
                                <input type="text" class="portal-input" name="name" id="name" placeholder="Enter full name" required>
                            </div>
                            <div>
                                <label class="portal-label" for="username">Username</label>
                                <input type="text" class="portal-input" name="username" id="username" placeholder="Choose a username" required>
                            </div>
                            <div>
                                <label class="portal-label" for="email">Email</label>
                                <input type="email" class="portal-input" name="email" id="email" placeholder="name@company.com" required>
                            </div>
                            <div>
                                <label class="portal-label" for="password">Password</label>
                                <input type="password" class="portal-input" name="password" id="password" placeholder="Create a password" required>
                            </div>
                        </div>

                        <div class="auth-actions mt-4">
                            <button class="portal-btn-secondary" type="submit">Register User</button>
                            <a href="/" class="portal-btn-ghost">Back to Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
</html>