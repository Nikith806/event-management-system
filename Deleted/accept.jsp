<%@page import="event.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
 	<%
  		String name=request.getParameter("name");
                        String htno=request.getParameter("htno");
                        String email=request.getParameter("email");
			String str = "Authorized";
                        String x = "You Are Authorized";
            
            
            
            String msg ="Mail ID : "+email+"\nMessage :"+x;
   	try {
		   
			
			
                        Connection con = Dbconnection.getConnection();
       		Statement st1 = con.createStatement();
       		String query1 ="update student set status='"+str+"' where name='"+name+"' and htno='"+htno+"'";
	   		st1.executeUpdate (query1);
                        Mail m= new Mail();
            m.secretMail(msg, email, email);
			con.close();
			response.sendRedirect("viewstudent.jsp?m6");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
