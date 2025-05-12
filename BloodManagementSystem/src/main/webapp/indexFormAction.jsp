<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %> 

<% 
String name = request.getParameter("name"); 
String mobilenumber = request.getParameter("mobilenumber");  // Fixed typo
String email = request.getParameter("email"); 
String bloodgroup = request.getParameter("bloodgroup");  
String status = "pending"; 

try {  
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("INSERT INTO Bloodrequest VALUES (?, ?, ?, ?, ?)");
    ps.setString(1, name);
    ps.setString(2, mobilenumber);
    ps.setString(3, email);
    ps.setString(4, bloodgroup);
    ps.setString(5, status);
    ps.executeUpdate();
    response.sendRedirect("index.jsp?msg=valid");
} catch(Exception e) {
    e.printStackTrace(); 
    response.sendRedirect("index.jsp?msg=error");
}
%>
