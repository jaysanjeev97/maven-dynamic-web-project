
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IMS PROJECT</title>
</head>
<body>
 <div style="text-align: center;">
<h3>RESISTER USER</h3>
    <form action="Register">
       NAME: <input type="text" name="fn"pattern="[A-Za-z]{3,}"					
            title="minimum 3 characters should be there."placeholder="Enter your nickname" required><br>
        <br>
       DEPARTMENT:<input type="text" name ="department" pattern="[A-Za-z]{4,}" title="minimum 4 characters should be there." ><br>
       <br>
      GMAIL:  <input type="gmail" name="gmail" pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"					
            title="You have to insert @ and . in the username ex.abc@gmail.com"placeholder="xyz@gmail.com"><br>
        <br>
       PASSWORD: <input type="password" name="password"  pattern="[A-Za-z0-9]+[@][A-za-z0-9]*" title="must be provide 8 characters and use some special characters for safty purpose"><br>
        <br>
        <button>submit</button>
        <button>reset</button>
         
       </form>
       </div>
	
</body>
</html>