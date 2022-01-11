<%@page import="java.util.List"%>
<%@page import="com.lms.model.LeaveRes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"
 import ="com.lms.daoimpl.*" %>     
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>LMS PROJECT</title>
<style>
body{
background: linear-gradient(#DAD299, #b0dab9);}
.btn
{
margin-top:-560px;
margin-left:400px;
}
.btn1
{
margin-top:-303px;
margin-left:650px;
}
.p{
margin-top:12px;}
</style>

</head>
<body>
<center><h1>LEAVE MANAGEMENT SYSTEM</h1></center>
<p><h3> Show Leave Request Form</h3></p>
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
       <div class="btn">
 <a href="AdminUpdateLeaveRequest.jsp"><button type="button" class="btn btn-primary">Update Leave Request</button></a>
</div>
<div class="btn1">
<a href="AdminDeleteLeaveRequest.jsp"><button type="button" class="btn btn-primary"m>Delete Leave Request</button></button></a>
      </div> 
</form>



</body>
</html>