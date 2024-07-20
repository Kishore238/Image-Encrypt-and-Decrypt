<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Image Encryption And Decryption</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/icons.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
 <%
}
%> 
<body>
    <%
    
//String user = session.getAttribute("username").toString();

    %>
<header>
    <h1>Image Encryption And Decryption</h1>
</header>
<!--Nav Bar-->
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="adminhome.jsp" class="active"><i class="fa fa-home">Home</i></a>
        </li>
        
      
         <li>
            <a href="viewusers.jsp"><i class="fa ">View Users & Accept</i></a>
        </li>
      
        <li>
            <a href="logout.jsp"><i class="fa ">Logout</i></a>
        </li>
    </ul>
</nav>
<br><Br><Br><br><br><Br><br><br>
<div style="width:50%; margin: auto;">
 <h2>Welcome To Admin</h2>
</div>
<script src="Js/js.js"></script>
</body>
</html>