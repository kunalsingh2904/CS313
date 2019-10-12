 <%@page import="com.mvc.bean.AdvisorBean"%> 
<%@page import="java.util.ArrayList"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
<body>
<% ArrayList<AdvisorBean> std =  (ArrayList<AdvisorBean>)request.getAttribute("data");
        if (std.size()>0) {%>
 <table border ="1" width="500" align="center"> 
         <tr bgcolor="00FF7F"> 
          <th><b>student id</b></th> 
          <th><b>instructor id</b></th> 
          <th><b>instructor name</b></th> 
         </tr> 
      
        
        <%for(AdvisorBean s:std){%> 
      
            <tr> 
                <td><%=s.gets_id()%></td> 
                <td><%=s.geti_id()%></td> 
                <td><%=s.geti_name()%></td> 
            </tr> 
            <%}}
            else{%>
            	<h2 style="text-align:center"> student not found</h2>
            <%}%> 
        </table>
 <!--  <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>-->
 	<br><div style="text-align: center"><a href="Home.jsp">Back</a></div>

</body>
</html>

