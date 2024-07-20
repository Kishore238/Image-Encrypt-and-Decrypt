<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = request.getParameter("username");                     
            String email = request.getParameter("email");
        
             
               
            				
            try {
						
							
            Connection connection = Dbconnection.getConnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("update users set status='accepted' where username='"+username+"' and email='"+email+"'");
            
           
                       
            int x=ps.executeUpdate();
            if(x>0)
            {
                response.sendRedirect("viewusers.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("viewusers.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          