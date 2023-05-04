<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body class="bg-light">
	<h1 class="text-dark text-center">Here's Your Omikuji!</h1>
	<div class="col-5 card container bg-primary d-flex flex-column py-3 px-2 mt-4 gap-1 text-light">
		<p>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, <c:out value="${endeavor}"/> for a living.</p>
		<p>The next time you see a <c:out value="${living}"/>, you will have good luck.</p>
		<p>Also, <c:out value="${somethingNice}"/></p>
	</div>
	<div class="text-center mt-2">
		<form  action="/reset" method="GET">
			<button type="button" class="btn btn-danger">Go Back</button>
		</form>
	</div>
</body>
</html>