<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
</head>
<body>
<h3>LEAVE REQUEST FORM</h3>
<form action="update" method="get">
Enter employee id: <input type="number" name="empid"><br>
<br>
Enter the from date:<input type="date" name="upfromdate"><br>
<br>
Enter the to date:<input type="date" name="uptodate"><br>
<br>
Enter the noofdays:<input type="number" name="nofdays"><br>
<br>
<button type="submit">submit</button>
<button>reset</button>
</form>


</body>
</html>