<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Password Recovery | Capgemini Training Portal</title>
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
                    <span class="eyebrow">Recovery Flow</span>
                    <h1>Restore account access without adding friction.</h1>
                    <p>Use the recovery flow to initiate a password reset request while keeping the interface calm, clear, and trustworthy.</p>
                </div>
                <ul class="feature-list">
                    <li>
                        <span class="feature-icon">R1</span>
                        <span>Clear guidance for account lookup by either username or email address.</span>
                    </li>
                    <li>
                        <span class="feature-icon">R2</span>
                        <span>Professional feedback patterns that match login and registration states.</span>
                    </li>
                    <li>
                        <span class="feature-icon">R3</span>
                        <span>Consistent portal styling for a more credible password recovery experience.</span>
                    </li>
                </ul>
            </aside>

            <div class="auth-panel">
                <div class="auth-form-wrap">
                    <h2>Password recovery</h2>
                    <p>Enter the username or email associated with the account and we will simulate the reset workflow.</p>

                    <c:if test="${not empty error}">
                        <div class="alert portal-alert alert-danger mb-3" role="alert">${error}</div>
                    </c:if>

                    <form action="/forgot" method="post">
                        <div class="form-stack">
                            <div>
                                <label class="portal-label" for="username">Username or Email</label>
                                <input type="text" class="portal-input" name="username" id="username" placeholder="Enter username or email" required>
                            </div>
                        </div>

                        <div class="auth-actions mt-4">
                            <button class="portal-btn" type="submit">Send Reset Link</button>
                            <a href="/" class="portal-btn-ghost">Back to Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
</html>