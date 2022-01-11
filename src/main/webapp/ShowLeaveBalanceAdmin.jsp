<%@page import="com.lms.model.ShowLevBal"%>
<%@page import="java.util.List"%>
<%@page import="com.lms.daoimpl.ShowLevDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
</head>
<body>

<center><h1> LEAVE MANAGEMENT SYSTEM </h1></center>

<form action="CheckLeaveEmployee.jsp">
<input type="text" name="emp_id" pattern="[0-9]{4,8}" requried >
<button type="submit" ></button>
</form>
<form action="show" method="get">
<% 
ShowLevDaoImpl showlevbalancead= new ShowLevDaoImpl();
List<ShowLevBal> showbal=showlevbalancead.showbal() ;

%>
<br>
 <center><table border="1" cellspacing=0px; cellpadding=20px; style="width: 600px; height:5px;">
          <tr>
            
            <th>emp_id</th>
            <th>causal_lev</th>
            <th>medical_lev</th>
            <th>causal_lev_bal</th>
            <th>medical_lev_bal</th>
            <th>paid_lev</th>
            
          </tr>
 <% 

int count=0;
for(ShowLevBal sh:showbal){
	
 %>
 <tbody>
          <tr>
            
            <td><%=sh.getEmp_id()%></td>
            <td><%=sh.getCausal_lev()%></td>
            <td><%=sh.getMedical_lev()%></td>
            <td><%=sh.getCausal_lev_bal()%></td>
            <td><%=sh.getMedi_lev_bal()%></td>
            <td><%=sh.getPaid_lev()%></td>
            
           </tr>
           </tbody>
           <%} %>
     
      </table></center>
      
      
</form>      

<!-- <a href="CheckLeaveEmployee.jsp"><button type="sumbit">CheckLeaveEmployee</button></a> -->
</body>
</html>