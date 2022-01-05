s<%@page import="com.lms.model.ShowLevBal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.ResultSet"
 import ="com.lms.daoimpl.*" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
</head>
<body>
<center><h1> LEAVE MANAGEMENT SYSTEM </h1></center>
<form action="show" method="get">
<% 
ShowLevDaoImpl showlevbalance= new ShowLevDaoImpl();
List<ShowLevBal> showbal=showlevbalance.showbal() ;
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
<a href="ShowLeaveUpdate.jsp"><button type="sumbit">Update Casual Leave </button></a>
<a href="ShowLeaveUpdate1.jsp"><button type="sumbit">Update Medical Leave </button></a>
<a href="ShowLeaveUpdate2.jsp"><button type="sumbit">Update paid Leave </button></a>

</body>
</html>