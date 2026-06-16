<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Event</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 

</head>
<body id="home">

<div id="templatemo_wrapper">

	<div id="templatemo_header">
           <h1>Event Management System</h1>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="admin.jsp" >Admin</a>
                    
                </li>
                <li><a href="hod.jsp">HOD</a>
                   
                </li>
                <li><a href="student.jsp"class="selected">Student</a></li>
                
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- END of header -->
    
    <div id="templatemo_slider"><span class="sliderframe"></span>
    	 <div class="slider-wrapper theme-orman">
            <div id="slider" class="nivoSlider">
            	<img src="images/slider/01.jpg" alt="slider image 2" title="#htmlcaption" />
                <img src="images/slider/02.jpg" alt="slider image 2" />
                <a rel="nofollow" href="http://www.templatemo.com/page/1">
                	<img src="images/slider/03.jpg" alt="slider image 2" title="This is an example of a caption." />
                </a>
                <img src="images/slider/04.jpg" alt="slider image 4" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                
            </div>
        </div> 
		<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
				controlNav:false,
   			 directionNavHide: false
			});
        });
        </script>
    </div><!-- END of templatemo_slider -->
    
     <!-- END of twitter --><%
                
ResultSet rs=null;
 try{
       
         Connection con=Dbconnection.getConnection();
        Statement st=con.createStatement();
        rs=st.executeQuery("select * from event");
}   catch(Exception e){
    e.printStackTrace();
    }
%>
    
    <div id="templatemo_main">
    
    	
        
            
            <center>  <form name="myform" action="studenregtact.jsp" method="post">
         <table border="0" >
             <font color="black" size="5">Student Registration</font></h2> 
             <br><br>
         <tr><td><font color="black"> Student Name :</td><td><input type="text" name="username" required="" /></td></tr>
         <tr><td><font color="black">Password :</td><td><input type="password" name="password" required="" /></td></tr>
         <tr><td><font color="black"> H.t No :</td><td><input type="text" name="htno" required="" /></td></tr>
         <tr>
          <td><font color="black">Department</td>   
             <td>
            <select name="dep" required>
                <option value="">Select</option>
                <option value="cse">C.S.E</option>
                <option value="ece">E.C.E</option>
                <option value="it">I.T</option>
               
            </select>
        </td>            
         </tr>
         <tr>
        <td>Event Name:</td>
        <td>
            <select name="event" >
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("eventname")%>"><%=rs.getString("eventname")%></option>

                <%}%>
            </select>
        </td>
        </tr>
         <tr><td><font color="black"> D.O.B :</td><td><input type="date" name="dob" required="" /></td></tr>
         <tr><td><font color="black"> E-Mail :</td><td><input type="text" name="email" required="" /></td></tr>
         <tr><td><font color="black"> Mobile:</td><td><input type="text" name="mobile" required="" /></td></tr>
         
         <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="    Registration    " /></td></tr>
         <tr></tr>      
         </table>
         </form>
              
         </center>
            
            
            
            <div class="clear"></div>
            
            
            
            
            
            <div class="clear"></div>
          
            
           
         
		
        </div> <!-- END of content -->
                
		
        
        <div class="clear"></div>


</div> <!-- END of wrapper -->
<br><br><br>
<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        
    	
        
        
        
        
        <div class="clear"></div>
    </div> <!-- END of bottom -->
    
</div> <!-- END of bottom wrapper -->

 <!-- END of footer wrapper -->
<!-- templatemo 388 runner -->
<!-- 
Runner Template 
http://www.templatemo.com/preview/templatemo_388_runner 
-->
</body>
</html>