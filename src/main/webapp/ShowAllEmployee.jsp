<%@page import="java.util.List"%>
<%@page import="  com.lms.model.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
</head>
<body>
<h3>Show All Employee</h3>
<form action="employee" method="get">
<%
EmpDaoImpl employ=new EmpDaoImpl ();
%>
<% 
List<EmpLogin> log=employ.showEmployee();
  
%>
<br>
<center><table border="1" cellspacing=0px; cellpadding=20px; style="width:80%; height:5px;text-align:center;">

<tr>

<th>emp_id</th>
<th>emp_name</th>
<th>emp_department</th>
<th>emp_email</th>
<th>emp_password</th>

</tr>

<% 

int count=0;
for(EmpLogin em:employ){
%>



 <tbody>
             
          <tr>
             <td><%=em.getEmp_id()%></td>
            <td><%=em.getEmp_name()%></td>
            <td><%=em.getEmp_department()%></td>
            <td><%=em.getEmp_email()%></td>
            <td><%=em.getEmp_password()%></td>
            
           </tr>
           
     </tbody>
     
      <%} %>
       </table></center>
</form>

</body>
</html>