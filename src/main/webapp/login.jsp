<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sign In | Capgemini Training Portal</title>
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
                        <span class="eyebrow">Secure Access</span>
                        <h1>Professional onboarding starts at the front door.</h1>
                        <p>Sign in to manage users, maintain account records, and keep your training operations
                            organized from a single workspace.</p>
                    </div>
                    <ul class="feature-list">
                        <li>
                            <span class="feature-icon">01</span>
                            <span>Modern account workflows with clear access paths for sign-in, registration, and
                                recovery.</span>
                        </li>
                        <li>
                            <span class="feature-icon">02</span>
                            <span>Structured user management designed for internal training teams and administrative
                                staff.</span>
                        </li>
                        <li>
                            <span class="feature-icon">03</span>
                            <span>Consistent interface language and visual hierarchy across the full portal
                                experience.</span>
                        </li>
                    </ul>
                </aside>

                <div class="auth-panel">
                    <div class="auth-form-wrap">
                        <h2>Welcome back</h2>
                        <p>Use your account credentials to continue to the training administration portal.</p>

                        <c:if test="${not empty msg}">
                            <div class="alert portal-alert alert-success mb-3" role="alert">${msg}</div>
                        </c:if>
                        <c:if test="${not empty error}">
                            <div class="alert portal-alert alert-danger mb-3" role="alert">${error}</div>
                        </c:if>

                        <form action="login" method="post">
                            <div class="form-stack">
                                <div>
                                    <label class="portal-label" for="username">Username</label>
                                    <input type="text" class="portal-input" id="username" name="username"
                                        placeholder="Enter your username" required>
                                </div>
                                <div>
                                    <label class="portal-label" for="password">Password</label>
                                    <input type="password" class="portal-input" id="password" name="password"
                                        placeholder="Enter your password" required>
                                </div>
                            </div>

                            <div class="auth-actions mt-4">
                                <button class="portal-btn" type="submit">Sign In</button>
                            </div>
                        </form>

                        <div class="support-panel">
                            <div class="support-row">
                                <span class="support-icon">?</span>
                                <div>
                                    <p>Need a new account or help recovering access?</p>
                                    <div class="d-flex flex-wrap gap-3">
                                        <a href="register" class="text-link">Create account</a>
                                        <a href="forgot" class="text-link">Reset password</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </body>

    </html>