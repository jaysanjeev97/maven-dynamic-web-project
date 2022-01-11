<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.h1{
margin-top:30px;
}
.container{margin-left:-30px;
margin-top:20px;}
.btn{
margin-left:100px;}
.forms
{
margin-left:500px;
margin-top:-70px;
border:1px solid black;
width:450px;
height:300px;
}
.h3{
margin-top:150px;
margin-left:600px;}
.cas{
margin-top:120px;
margin-left:75px;
}
 .but{
margin-top:20px;
margin-left:100px;

} 
body{
background:#F5F5DC;
}

</style>
</head>
<body>
<div class="h1">
<center><h1 class="bg-dark text-white"> LEAVE MANAGEMENT SYSTEM </h1></center>
</div>
<div class="container">
<div class="h3">
<h2>Show Leave Insert</h2>
</div>
<form action="addlev" method="get">
<div class="forms">
<div class="cas">

Enter employee id:<input type="number" name="id"><br>
<br>
</div>
<div class="but">
<button type="button" class="btn btn-info">submit</button>
</div>
</div>
</div>
</form>
</body>
</html>