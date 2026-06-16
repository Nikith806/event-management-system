<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
       
        try{

        String user=null;
          String event=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
       String sql="SELECT * FROM student where name='"+username+"' and password='"+password+"'";
			Statement stmt = con.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
			String sql1="SELECT * FROM student where name='"+username+"' and status='Waiting'";
			Statement stmt1 = con.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			 user = rs.getString(2);
                         event = rs.getString(9);
                        session.setAttribute("username",username);
                        session.setAttribute("event",event);
			if(rs1.next())
			    {
				%>
									<p>Yor are not Authorized by Admin,wait!! </p><br/><br/><a href="student.jsp">Back</a>
									<%
				}
				else
				{
				response.sendRedirect("studenthome.jsp?m1");
			    }
			}
                        
                        else{
                        response.sendRedirect("student.jsp?m2");
                        }
                        }
	catch(Exception e)
	{
		out.print(e);
	}
	
        %>