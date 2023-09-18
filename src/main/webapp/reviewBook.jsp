<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.bookApp.model.Review"%>
<%@ page import="java.net.http.HttpRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BookReview</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
.card {
	margin: 0 auto;
	margin-top: 50px;
}

.content {
	text-align: right;
}

.right {
	text-align: right;
	margin-right: 20px;
}

.from-control, .form-group {
	margin-top: 20px;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
}

.int {
	margin-top: 10px;
	margin-left: 20px;
	margin-right: 10px;
	margin-bottom: 10px;
	width: 200px;
}

.label {
	margin-left: 20px;
}

#alert {
	margin-top: 20px;
	margin-left: 20px;
	margin-bottom: 20px;
	margin-right: 20px;
}
</style>
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
		<form
			action="addReview?bid=<%=request.getParameter("b_id")%>&uid=<%=request.getParameter("u_id")%>"
			method="post">
			<div class="form-group">
				<input type="text" placeholder="Enter Comment" name="comment"
					class="form-control" required>
			</div>
			<div class="form group">
				<input type="number" placeholder="Enter Rating" name="rating"
					max="5" min="1" class="int" required>
			</div>
			<div class="right">
				<button type="submit" class="btn btn-success">Submit Book
					Review</button>
			</div>
		</form>
	</div>
</body>
</html>
