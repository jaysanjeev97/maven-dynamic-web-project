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
<form action="insert" method="get">
Enter employee id: <input type="number" name="id"><br>
<br>
Enter the reason:<input type="text" name="reason"><br>
<br>
Enter the from date:<input type="date" name="fromdate" id="fromdate"><br>
<br>
Enter the to date:<input type="date" name="todate" id="todate"><br>
<br>
Enter the noofdays:<input type="number" name="days"><br>
<br>
<button type="submit">submit</button>
<button>reset</button>
</form>
<script type="text/javascript">
today();
function today(){
	var today=new Date();
	var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	var date2= (today.getFullYear()+1)+'-'+(today.getMonth()+1)+'-'+today.getDate();

	document.getElementById("fromdate").setAttribute("min",date);
	document.getElementById("fromdate").setAttribute("max",date2);
	document.getElementById("todate").setAttribute("min",date);
	document.getElementById("todate").setAttribute("max",date2);
	console.log(date);
	console.log(date2);
	console.log(date2-date);
} 
</script>
</body>
</html>