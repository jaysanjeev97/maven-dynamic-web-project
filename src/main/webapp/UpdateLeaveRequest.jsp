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
	max-width: 280px;
	width: 100%;
	height: 290px;
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
	margin-bottom: 18px;
}

.user-details .input-box input {
	height: 35px;
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
	margin: 3px 0;
}

form .button input {
	height: 80%;
	width: 40%;
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
	left: -3px;
	top: 85px;
}

form .button input:hover {
	transform: scale(0.99);
	background: rgb(241, 175, 7);
}

form .button1 {
	height: 45px;
	margin: 3px 0;
}

form .button1 input {
	height: 80%;
	width: 40%;
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
	left: 175px;
	top: 35px;
}

form .button1 input:hover {
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
	<%
	int empid = (int) session.getAttribute("empid");
	%>
	<p>
	<center>
		<h3>LEAVE UPDATE FORM</h3>
	</center>
	</p>
	<form action="update" method="get">
		<input style="visibility: hidden;" type="number" name="id"
			value="<%=empid%>"><br> <br>
		<div class="container">
			<div class="user-details">
				<div class="input-box">
					<span class="details">Enter the from date:</span> <input
						type="date" name="upfromdate" id="datefield" required>
				</div>


				<div class="input-box">
					<span class="details">Enter the to date:</span> <input type="date"
						name="todate" id="uptodate" required>
				</div>

				<div class="input-box">
					<span class="details">Enter the no of days:</span> <input
						type="number" name="nofdays" required>
				</div>
				<div class="button">
					<input type="submit" value="submit">
				</div>
				<div class="button1">
					<input type="reset" value="reset">
				</div>
			</div>
		</div>

	</form>


















	<!-- Enter the from date:<input type="date" name="upfromdate"><br>
<br>
Enter the to date:<input type="date" name="uptodate"><br>
<br>
Enter the noofdays:<input type="number" name="nofdays"><br>
<br>
<button type="submit">submit</button>
<button>reset</button>
</form> -->


</body>
</html>