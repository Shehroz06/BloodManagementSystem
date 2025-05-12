<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<%
String msg = request.getParameter("msg");
if ("done".equals(msg)) {
%>
    <center><font color="green" size="5">Request marked as completed.</font></center>
<%
} else if ("error".equals(msg)) {
%>
    <center><font color="red" size="5">Something went wrong while updating.</font></center>
<%
}
%>

<table id="customers">
    <tr>
        <th>Name</th>
        <th>Mobile Number</th>
        <th>Email</th>
        <th>Blood Group</th>
        <th>Done</th>
        <th>Delete</th>
    </tr>
    <%
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from bloodrequest where status='pending'");
        while(rs.next())
        {
    %>
    <tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><a href="requestForBloodDone.jsp?mobilenumber=<%=rs.getString(2)%>">Done</a></td> 
        <td><a href="requestForBloodDelete.jsp?mobilenumber=<%=rs.getString(2)%>">Delete</a></td>
    </tr>
    <%
        }
    }
    catch(Exception e)
    {
        out.println("Error: " + e.getMessage()); // Add error reporting
    }
    %>
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>