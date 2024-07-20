<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
            <a href="adminhome.jsp"><i class="fa fa-home">Home</i></a>
        </li>
        
      
         <li>
            <a href="viewusers.jsp" class="active"><i class="fa ">View Users & Accept</i></a>
        </li>
      
        <li>
            <a href="logout.jsp"><i class="fa ">Logout</i></a>
        </li>
    </ul>
</nav>
<%


                    Connection connection = Dbconnection.getConnection();
                        
			String sql="SELECT * FROM users ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                       


%>
<br><Br><Br>
<div style="width:50%; margin: auto;">
 <h2>View Users</h2>
 <BR>
 <table border="1" width="100%">
     <tr>
         <th>User Name</th>
         <th>Email</th>
         <th>Address</th>
         <th>Mobile</th>
          <th>Status</th>
           <th>Accept</th>
     
     </tr>
     <%
      while(rs.next())
			{
     
     %>
     
     <tr>
         <th><%=rs.getString("username")%></th>
         <th><%=rs.getString("email")%></th>
         <th><%=rs.getString("address")%></th>
         <th><%=rs.getString("mobile")%></th>
         <th><%=rs.getString("status")%></th>
         <th><a href="accept.jsp?username=<%=rs.getString("username")%>&email=<%=rs.getString("email")%>&address=<%=rs.getString("address")%>">Click</a></th>
         
     </tr>
     <%
     
                        }
     %>
     
     
     
 </table>
 
</div>
<script src="Js/js.js"></script>
</body>
</html>