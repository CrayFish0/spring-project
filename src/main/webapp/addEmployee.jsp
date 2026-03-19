<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Employee | Capgemini Training Portal</title>
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
					<h2>Add Employee</h2>
					<p>Create a new employee record with complete profile details.</p>
				</div>

				<form action="/employee/add" method="post">
					<div class="form-stack">
						<div>
							<label for="empId" class="portal-label">Employee Number</label>
							<input id="empId" type="number" class="portal-input" name="empId" placeholder="Enter employee number" required>
						</div>

						<div>
							<label for="empName" class="portal-label">Employee Name</label>
							<input id="empName" type="text" class="portal-input" name="empName" placeholder="Enter full name" required>
						</div>

						<div>
							<label for="empEmail" class="portal-label">Email</label>
							<input id="empEmail" type="email" class="portal-input" name="empEmail" placeholder="name@company.com" required>
						</div>

						<div>
							<label for="empContactNo" class="portal-label">Contact Number</label>
							<input id="empContactNo" type="text" class="portal-input" name="empContactNo" placeholder="Enter contact number" required>
						</div>

						<div>
							<label for="empCity" class="portal-label">City</label>
							<input id="empCity" type="text" class="portal-input" name="empCity" placeholder="Enter city" required>
						</div>
					</div>

					<div class="form-actions mt-4">
						<button type="submit" class="portal-btn">Save Employee</button>
						<a href="/employee/all" class="portal-btn-ghost">Cancel</a>
					</div>
				</form>
			</section>
		</div>
	</main>
</body>
</html>
