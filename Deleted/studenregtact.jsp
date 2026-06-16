<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("uid");
    String l = request.getParameter("username");
    String m = request.getParameter("password");
    String n = request.getParameter("htno");
    String nn = request.getParameter("dep");
    String f = request.getParameter("dob");
    String p = request.getParameter("email");
    String q = request.getParameter("mobile");
    String r = "Waiting";
    String s = request.getParameter("event");
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,nn);
        ps.setString(6,f);
        ps.setString(7,p);
        ps.setString(8,q);
        ps.setString(9,s);
        ps.setString(10,r);

    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("student.jsp?m1=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>