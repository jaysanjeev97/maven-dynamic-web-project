<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
</head>
<body>
<h2>Add New Employee</h2>
<form action="addnewemp" method="get">
NAME: <input type="text" name="name"pattern="[A-Za-z]{3,}"					
            title="minimum 3 characters should be there."placeholder="Enter your nickname" required><br>
        <br>
DEPARTMENT:<input type="text" name ="dept" pattern="[A-Za-z]{4,}" title="minimum 4 characters should be there." ><br>
       <br>
GMAIL:  <input type="gmail" name="gmail" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"					
            title="You have to insert @ and . in the username ex.abc@gmail.com"placeholder="xyz@gmail.com"><br>
        <br>
PASSWORD: <input type="password" name="password"  pattern="[A-Za-z0-9]+[@][A-za-z0-9]*" title="must be provide 8 characters and use some special characters for safty purpose"><br>
        <br>
<button>submit</button>
<button>reset</button>
         
      
       
</form>

</body>
</html>