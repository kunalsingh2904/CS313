 <%@page import="com.mvc.bean.CourseBean"%> 
<%@page import="java.util.ArrayList"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
<body>
<% ArrayList<CourseBean> std =  (ArrayList<CourseBean>)request.getAttribute("data");
        if (std.size()>0){%>
 <table border ="1" width="500" align="center"> 
         <tr bgcolor="00FF7F"> 
          <th><b>course id</b></th> 
          <th><b>course Name</b></th> 
          <th><b>grade</b></th> 
         </tr> 
      
        
        <%for(CourseBean s:std){%> 
      
            <tr> 
                <td><%=s.getc_id()%></td> 
                <td><%=s.getc_name()%></td> 
                <td><%=s.getgrade()%></td> 
            </tr> 
            <%}}else{%>
            	<h2 style="text-align:center"> student not found</h2>
            	<%} %> 
        </table>
 <!-- <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>-->
<br><div style="text-align: center"><a href="Home.jsp">Back</a></div>
</body>
</html>

