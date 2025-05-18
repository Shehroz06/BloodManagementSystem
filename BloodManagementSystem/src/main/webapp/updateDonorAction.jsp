<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
    String id = request.getParameter("id"); 
    String name = request.getParameter("name"); 
    String father = request.getParameter("father"); 
    String mother = request.getParameter("mother"); 
    String mobilenumber = request.getParameter("mobilenumber"); 
    String email = request.getParameter("email"); 
    String address = request.getParameter("address"); 

    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement(
            "UPDATE donors SET name = ?, father = ?, mother = ?, mobilenumber = ?, email = ?, address = ? WHERE id = ?"
        );
        
        ps.setString(1, name); 
        ps.setString(2, father); 
        ps.setString(3, mother); 
        ps.setString(4, mobilenumber); 
        ps.setString(5, email); 
        ps.setString(6, address); 
        ps.setString(7, id);  // WHERE condition
        
        ps.executeUpdate(); 
        response.sendRedirect("editDeleteList.jsp?msg=valid"); 
    } catch(Exception e) {
        e.printStackTrace(); 
        response.sendRedirect("editDeleteList.jsp?msg=invalid");
    }
%>