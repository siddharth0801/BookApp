<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BooksApp</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-dark navbar-dark">
			<a class="navbar-brand" href="/">Book Review App</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link">User: ${user.getFirstName()}
						${user.getLastName()}</a></li>
					<li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="container">
		<h2>List of Books</h2>
		<div class="dropdown-divider"></div>
		<div class="container results-container">
			<c:forEach items="${listBook}" var="b">
				<div class="card border-primary mb-3" style="width: 25rem">
					<div class="card-body">
						<h4 class="card-title">${b.getTitle()}</h4>
							<h5 class="card-text">By ${b.getAuthor()}</h5>
							<h5 class="card-text">Published In: ${b.getYear()}</h5>
					</div>
					<div class="card-footer">
						<a href="/book?bid=${b.getBookID()}&uid=${user.getUserID()}"
							class="card-link">Open Reviews</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>
