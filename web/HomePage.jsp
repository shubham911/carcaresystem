
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
select {
height:22px;
overflow-y: scroll;
}
</style>
</head>
        
        <title>JSP Page</title>
    </head>
    <script>
       
    </script>
<body background="profilepics/blue.jpg" style="background-repeat: no-repeat;background-size:100%">
        <h1 style="font-family: copperplate gothic;text-align: center">Car Care System</h1>
        

        <hr style="background-color:skyblue;color:white;">


<div id="mySidenav" class="sidenav">
    
        
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <lu><li><a href="CustInfo.jsp">Add a New Booking</a></li>
      <li><a href="status.jsp">Status</a></li>
      <li><a href="service.jsp">Service</a></li>
            <li><a href="Email.jsp">Email</a></li>
            <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
</body>
</html> 