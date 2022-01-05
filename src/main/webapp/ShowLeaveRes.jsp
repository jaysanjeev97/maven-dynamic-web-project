<%@page import="java.util.List"%>
<%@page import="com.lms.model.LeaveRes"%>
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
<center><h1>LEAVE MANAGEMENT SYSTEM</h1></center>
<h3> Show Leave Request Form</h3>
<form action="showres" method="get">
<%
LeaveResDaoImpl levres=new LeaveResDaoImpl();
%>
<% 
List<LeaveRes> showLevres=levres.showLevres();
  
%>
<br>
<center><table border="1" cellspacing=0px; cellpadding=20px; style="width:80%; height:5px;text-align:center;">

<tr>
<th>request_id</th>
<th>emp_id</th>
<th>reason</th>
<th style="cellpadding:30px;">from_date</th>
<th>to_date</th>
<th>no_ofdays</th>
<th>status</th>

</tr>

<% 

int count=0;
for(LeaveRes lv:showLevres){
%>



 <tbody>
             
          <tr>
            <td><%=lv.getRequest_id()%></td>
            <td><%=lv.getEmp_id()%></td>
            <a><td><%=lv.getReason()%></td>
            <td><%=lv.getFrom_date()%></td>
            <td><%=lv.getTo_date()%></td>
            <td><%=lv.getNo_ofdays()%></td>
            <td><%=lv.getStatus()%></td>
            
           </tr>
           
     </tbody>
     
      <%} %>
       </table></center>
</form><br><br><br><br><br><br>
<a href="AdminUpdateLeaveRequest.jsp"><button type="sumbit">Update Leave Request</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AdminDeleteLeaveRequest.jsp"><button type="delete">Delete Leave Request</button></button></a>


</body>
</html>