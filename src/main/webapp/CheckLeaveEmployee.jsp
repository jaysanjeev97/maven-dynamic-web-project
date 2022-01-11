<%@page import="com.lms.model.ShowLevBal"%>
<%@page import="java.util.List"%>
<%@page import="com.lms.daoimpl.ShowLevDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="checklev" method="get">
<% 
int empId=Integer.parseInt (request.getParameter("emp_id"));
ShowLevBal sh=new ShowLevBal(empId);
ShowLevDaoImpl checklevbalance= new ShowLevDaoImpl();
List<ShowLevBal> checkbal=checklevbalance.checkbalance(sh);


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
for(ShowLevBal ck:checkbal){
	
 %>
 <tbody>
          <tr>
            
            <td><%=ck.getEmp_id()%></td>
            <td><%=ck.getCausal_lev()%></td>
            <td><%=ck.getMedical_lev()%></td>
            <td><%=ck.getCausal_lev_bal()%></td>
            <td><%=ck.getMedi_lev_bal()%></td>
            <td><%=ck.getPaid_lev()%></td>
            
           </tr>
           </tbody>
           <%} %>
     
      </table></center>
    
      
</form>
<!-- <a href="AdminCheckLeave.jsp"><button type="sumbit">Check Leave</button></a>   -->

</body>
</html>