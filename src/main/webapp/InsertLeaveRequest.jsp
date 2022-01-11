<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>

<style>
body {
	
	background-color: #b0dab9;
}

.container {
	max-width: 300px;
	width: 100%;
	background-color: rgb(255, 255, 255);
	/* background-color:rgba(253, 253, 253, 0.973); */
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
	position: absolute;
	left: 500px;
}

form .input-box span.details {
	display: block;
	margin-bottom: 15px;
}

.user-details .input-box input {
	height: 30px;
	width: 80%;
	outline: none;
	font-size: 16px;
	border-radius: 10px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 3px;
	transition: all 0.3s ease;
}

form .button {
	height: 45px;
	margin: 35px 0;
}

form .button input {
	height: 80%;
	width: 10%;
	border-radius: 15px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: #04AA6D;
	position: relative;
	left: 595px;
	top: 400px;
}

form .button input:hover {
	transform: scale(0.99);
	background: rgb(241, 175, 7);
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: 100%;
}
}
</style>
</head>
<body>
	<%int empid=(int)session.getAttribute("empid"); %>
	<center>
		<h3>LEAVE REQUEST FORM</h3>
	</center>
	<form action="insert" method="get">
		<input style="visibility: hidden;" type="number" name="id"
			value="<%=empid%>"><br> <br>
		<div class="container">
			<div class="content">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Enter the reason:</span> <input type="text"
							name="reason" required>
					</div>


					<div class="input-box">
						<span class="details">Enter the from date:</span> <input
							type="date" name="fromdate" id="datefield" required>
					</div>


					<div class="input-box">
						<span class="details">Enter the to date:</span> <input type="date"
							name="todate" id="todate" required>
					</div>

					<div class="input-box">
						<span class="details">Enter the no of days:</span> <input
							type="number" name="days" required>
					</div>
				</div>
			</div>
		</div>






		<!-- Enter the reason:<input type="text" name="reason"><br>
<br>
Enter the from date:<input type="date" name="fromdate" id="datefield"><br>
<br>
Enter the to date:<input type="date" name="todate" id="todate"><br>
<br>
Enter the noofdays:<input type="number" name="days"><br>
<br>
<button type="submit">submit</button>
<button>reset</button> -->

		<div class="button">
			<input type="submit" value="submit">
		</div>

	</form>

</body>
<script type="text/javascript">
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 

today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);
</script>
</html>