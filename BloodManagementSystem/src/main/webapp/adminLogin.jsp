<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <a href="index.jsp" class="logo"><img class="logo" src="BloodLink.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Back</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
    <center><font color="green" size="5">Login Succesfully</font></center>
<%
} else if ("invalid".equals(msg)) {
%>
    <center><font color="red" size="5">Login failed</font></center>
<%
}
%>
<form action="adminLoginAction.jsp" method="post">
  <div class="form-group">
    <center><h2>Username</h2></center>
    <input type="text" placeholder="Enter Username" name="username" required>
    <center><h2>Password</h2></center>
    <input type="password" placeholder="Enter Password" name="password" required>
    <center><button type="submit" class="button">Submit</button></center>
  </div>
</form>
</div>
<br>
<br>
<br>
<br>
</body>
</html>
