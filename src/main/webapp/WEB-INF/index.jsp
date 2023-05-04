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
<body>
	<h1 class="text-primary text-center">Send an Omikuji!</h1>
	<div class="col-5 card container d-flex flex-column py-3 px-2 mt-4">
		<form action="/process_form" method="POST">
			<div class="p-2 d-flex flex-column justify-content-start gap-1">
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="number">Pick any number from 5 to 25</label>
					<input class="form-control" type="number" name="number" />
				</div>
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="city">Enter the name of any city</label>
					<input class="form-control" type="text" name="city" />
				</div>
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="person">Enter the name of any real person</label>
					<input class="form-control" type="text" name="person" />
				</div>
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="endeavor">Enter professional endeavor or hobby</label>
					<input class="form-control" type="text" name="endeavor" />
				</div>
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="living">Enter any type of living thing</label>
					<input class="form-control" type="text" name="living" />
				</div>
				<div class="d-flex flex-column gap-2 ps-2">
					<label for="somethingNice">Say something nice to someone</label>
					<textarea class="form-control" name="somethingNice" id="" cols="20" rows="3"></textarea>
				</div>
			</div>
			<div class="text-end pe-2">
				<button class="btn btn-primary" type="submit">Send</button>						
			</div>
		</form>
	</div>
</body>
</html>