<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="index.jsp" class="logo"><img class="logo" src="BloodLink.png"></a>
  <div class="header-right">
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="Index.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
    <center><font color="green" size="5">Form Submitted Successfully. You will be notified within 3 hours.</font></center>
<%
} else if ("invalid".equals(msg)) {
%>
    <center><font color="red" size="5">Form submission failed.</font></center>
<%
}
%>
<center><h1>Enter Your Details to Request for Blood</h1></center>
<form action="indexFormAction.jsp" method="post">
<center>
<input type="text" name="name" placeholder="Enter Name" required>
<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
<input type="mail" name="email" placeholder="Enter Email Address" required>
<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
<button class="button1"></span>Submit</span></button>
</center>
</form>
  <br>
  <br>
  </div>
</div>

<br>         
<br>
 
</div>
</div>

</body>
</html>

