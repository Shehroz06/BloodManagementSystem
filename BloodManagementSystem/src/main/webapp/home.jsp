<%@include file="header.html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
img{
width:100%;
height:609px;
}</style>
</head>
<body>
<br>
<div style="max-width:100%">
  <img class="mySlides"  src="welcome.jpg" >
  <img class="mySlides"  src="admin.PNG" >
   <img class="mySlides"  src="slide1.jpg" >
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
<br>
<h3><center><h1>Enter Your Details to Request for Blood</h1></center>
<form action="indexFormAction.jsp" method="post">
<center>
<input type="text" name="name" placeholder="Enter Name" required>
<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
<input type="mail" name="email" placeholder="Enter Email Address" required>
<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
<button class="button1"></span>Submit</span></button>
</center>
</form></h3>
</body>
</html>