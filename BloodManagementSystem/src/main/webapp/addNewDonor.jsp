<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %> 

<%@ include file="header.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
        input[type="text"], input[type="password"], input[type="submit"], select, input[type="number"], input[type="email"] {
            border: none;
            background: silver;
            height: 50px;
            font-size: 16px;
            margin-left: 35%;
            padding: 15px;
            width: 33%;    
            border-radius: 25px;
        }
        h2,h1{
            margin-left:20%
        }
        hr {
            width:60%
        }
    </style>
</head>
<body>
<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
    <center><font color="green" size="5">Successfully updated</font></center>
<%
} else if ("invalid".equals(msg)) {
%>
    <center><font color="red" size="5">Something went wrong, kindly try again.</font></center>
<%
}
%>
<% 
    int id = 1;
    try {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select max(id) from donors");
        if (rs.next()) {
            id = rs.getInt(1);
            id = id + 1;
        }%>
    <div class="container">
    <h1 style="color: red;">Donor ID: <% out.println(id); %></h1>

<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<div class="container">
    <form action="addNewDonorAction.jsp" method="post">
        <input type="hidden" name="id" value="<% out.println(id);%>">
        <h2>Name</h2>
        <input type="text" placeholder="Enter Name" name="name" required>
        <hr>

        <h2>Father Name</h2>
        <input type="text" placeholder="Enter Father Name" name="father" required>
        <hr>

        <h2>Mother Name</h2>
        <input type="text" placeholder="Enter Mother Name" name="mother" required>
        <hr>

        <h2>Mobile Number</h2>
        <input type="number" placeholder="Enter Mobile Number" name="mobilenumber" required>
        <hr>
   
        <h2>Gender</h2>
        <select name="gender" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
        </select>
        <hr>

        <h2>Email</h2>
        <input type="email" placeholder="Enter Email" name="email" required>
        <hr>
        
        <h2>Blood Group</h2>
        <select name="bloodgroup" required>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>  
            <option value="O-">O-</option>  
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
        </select>
        <hr>
        
        <!-- Address Field -->
        <h2>Address</h2>
        <input type="text" placeholder="Enter Address" name="address" required>
        <br><br>
        
        <center><button type="submit" class="button">Save</button></center>
    </form>
</div>
</body>
</html>