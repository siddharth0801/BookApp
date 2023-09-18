<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
h1 {
	text-align: center;
	margin-top: 120px;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.center {
	text-align: center;
	margin-bottom: 50px;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<div class="container-fluid"><nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="/">Book Review App</a>
	</nav></div>
	<h1>Login</h1>
	<div class="center">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQv74hpKmdp2gDZYwWRxnHhJqlKFB8TcvhuQ&usqp=CAU">
	</div>

	<form action="login" method="post">

		<div class="container">
			<input type="text" placeholder="Enter Email" name="email" required>

			<input type="password" placeholder="Enter Password" name="password"
				required>
			<div class="center">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>

		</div>
	</form>
	<div class="center">
		<a href="signup.jsp">New User?? Try Signing In</a>
	</div>

</body>
</html>
