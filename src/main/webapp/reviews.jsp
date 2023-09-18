<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.bookApp.model.Review"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.http.HttpRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Book Home</title>
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
		<div class="center">
			<div class="card" style="width: 450px">
				<div class="card-body">
					<h3 class="card-title">${book.getTitle()}</h3>
					<p class="content">Author: ${book.getAuthor()}</p>
					<p class="content">Published In: ${book.getYear()}</p>
					<p class="content">Rating: ${avgrating}/5</p>
					<a href="reviewBook.jsp?b_id=${book.getBookID()}&u_id=${user.getUserID()}"><button
							class="btn btn-success">Review Book</button></a>
				</div>
			</div>
		</div>
		<div>
			<h3>Reviews:</h3>
		</div>
		<c:forEach items="${reviews}" var="r">
			<div class="alert alert-primary" id="alert">
				<div>${r.getU().getFirstName()}
					${r.getU().getLastName()}</div>
				<div>Rating: ${r.getRating()}/5</div>
				<div>Comment: ${r.getComment()}</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
