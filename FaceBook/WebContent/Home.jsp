<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="widli=device-widli,initial-scale=1.0">
<link rel="stylesheet" media="screen and (min-width: 0px)"type="text/css" href="css/style.css">

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
</head>
<body>

    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from signup;");
    %>
        
    
    <section>
        <header class="header-class">
            <a href="#"><img src="images/logo.png" class="logo"></a>
            <a class="toggle">Menu</a>
            <a href="#" class="login"><img src="images/lo.png" height="20" style="padding-left:5px;"></a>
           <ul class="alok"> 
		       <li style="padding-right:60px"><input placeholder="search here..." type="search" id="searchbox" name="searchbox" size="50"/></li>
		       <li><img src="images/prof.png" height="50"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:30px;background:cover;"/></li>
		       <li><a href="Profile.jsp" style="padding-top:15px;color:white">Profile</a></li>
			   <li style="margin-top:22px;color:white" class="and">|</li>
               <li><a href="Home.jsp" style="padding-top:15px;color:white"> Home</a></li>
             
               <li><a href="#Who-we-are"><img src="images/frn.png" height="30" /></a></li>
               <li><a href="#"><img src="images/chat.png" height="30" /></a></li>
               <li><a href="#"><img src="images/noti.png" height="30" /></a></li>
			   <li style="margin-top:17px;color:white" class="and">|</li>
               <li><a href="#"><img src="images/set.png" height="30" /></a></li>
               <li></li>
           </ul>
        </header>
    </section>
	
	
 
<div style="margin-left:px;background:white;padding:10px;width:300px;height:600px;position:fixed;">
<li style="list-style:none;"><img src="images/cover.jpg" height="110"  style="padding:0px;background:cover;"/></li>	
	<div style="margin-top:-50px;list-style : none;display:;padding:0px;">
	<center>
	    <li style="list-style:none;"><img src="images/prof.png" height="70"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><h2 style="padding:0px;">Alok kumar</h2></li>
	    </center>
	</div>
	<div style="padding-left:20px;">
	   <div style=""><h3>Bio</h3>
	       <p style="width:200px;">Thakur</p>
		   <p style="width:200px;">Computer Programmer</p>
		   <p style="width:200px;">Login 8April</p>
		   <p style="width:200px;">Study MCA (Delhi)</p>
	 </div></br>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;">
	    <li style="padding-left:15px;"><h3>Posts</h3><p style="text-align:center;">10</p></li>
		<li style="padding-left:15px;"><h3>Followers</h3><p style="text-align:center;">100</p></li>
		<li style="padding-left:15px;"><h3>Following</h3><p style="text-align:center;">50</p></li>
	</div>
 </div>	
 
 
 <div  style="margin-left:80%;background:white;padding:10px;width:250px;height:600px;position:fixed;margin-top:px;float:right;border-left:1px solid gray;">
 <%while(rs.next())
        {
            %>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:10px;" >
	    <li style="list-style:none;"><img src="images/prof.png" height="35"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><p style="padding:15px;"><%=rs.getString("name") %></p></li>
	</div>
	<%}%>
 </div>	
 
 
  <div style="margin-top:420px;background:white;margin-left:755px;padding:0px;width:350px;display:;height:400px;position:fixed;z-index:999;border-radius:20px 20px 0px 0px;">
    <div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-top:10px;border-bottom:1px solid gray;">
	    <li style="list-style:none;"><img src="images/prof.png" height="30"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;margin-top:10px;padding-left:20px;"><a href="#" style="text-decoration:none;">Alok kumar</a></li>
	</div>
	<div style="background:red;height:30px;">alok kumar</div>
	<div style="border-bottom:1px solid gray;">
	    <input type="text" name="message-box" placeholder="Type a message.............."style="width:90%;height:30px;border:none;"/><button type=""><img src="images/send.png" height="20" style="padding-top:10px"/>
	</div>
	<div style="">
	    
	</div>
	
 </div>	
 
 
 
 <div style="margin-left:340px;padding:0px;width:600px;margin-top:50px;display:;">
 
 

 
 
 
 <div style="margin-top:10px;background:white;">
    <div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-top:20px;">
	    <li style="list-style:none;"><img src="images/prof.png" height="50"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;margin-top:10px;padding-left:20px;"><a href="#" style="text-decoration:none;"><b style="color:darkblue">Alok kumar</b></a></br><a href="#" style="text-decoration:none;font-size:13px;">15 hrs</a></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-bottom:10px;">
	    <li style="list-style:none;"><p>Mesmerizing soap DIY creations that are so satisfying.</p></li>
	</div>
	<video controls width="600">
	  <source src="videos/output_free.mp4">
	</video>
	<div style="width:90%;display:flex;list-style:none;text-align:center;margin:15px;padding:10px;border-bottom:1px solid gray;">
	    <li><a href="#" style="text-decoration:none;width:100px;padding:px;">Like</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding-left:450px;">Comment</a></li>
	</div>
	<div style="width:100%;display:flex;list-style:none;text-align:center;padding:10px;">
	    <li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Like1</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Comment</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Share</a></li>
	</div>
 </div>	
<div style="margin-top:10px;background:white;">
    <div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-top:20px;">
	    <li style="list-style:none;"><img src="images/prof.png" height="50"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;margin-top:10px;padding-left:20px;"><a href="#" style="text-decoration:none;"><b style="color:darkblue">Alok kumar</b></a></br><a href="#" style="text-decoration:none;font-size:13px;">15 hrs</a></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-bottom:10px;">
	    <li style="list-style:none;"><p>Mesmerizing soap DIY creations that are so satisfying.</p></li>
	</div>
	<video controls width="600">
	  <source src="videos/output_free.mp4">
	</video>
	<div style="width:90%;display:flex;list-style:none;text-align:center;margin:15px;padding:10px;border-bottom:1px solid gray;">
	    <li><a href="#" style="text-decoration:none;width:100px;padding:px;">Like</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding-left:450px;">Comment</a></li>
	</div>
	<div style="width:100%;display:flex;list-style:none;text-align:center;padding:10px;">
	    <li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Like</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Comment</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Share</a></li>
	</div>
 </div>
 
<div style="margin-top:10px;background:white;">
    <div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-top:20px;">
	    <li style="list-style:none;"><img src="images/prof.png" height="50"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;margin-top:10px;padding-left:20px;"><a href="#" style="text-decoration:none;"><b style="color:darkblue">Alok kumar</b></a></br><a href="#" style="text-decoration:none;font-size:13px;">15 hrs</a></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:20px;padding-bottom:10px;">
	    <li style="list-style:none;"><p>Mesmerizing soap DIY creations that are so satisfying.</p></li>
	</div>
	<video controls width="600">
	  <source src="videos/output_free.mp4">
	</video>
	<div style="width:90%;display:flex;list-style:none;text-align:center;margin:15px;padding:10px;border-bottom:1px solid gray;">
	    <li><a href="#" style="text-decoration:none;width:100px;padding:px;">Like</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding-left:450px;">Comment</a></li>
	</div>
	<div style="width:100%;display:flex;list-style:none;text-align:center;padding:10px;">
	    <li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Like</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Comment</a></li>
		<li><a href="#" style="text-decoration:none;width:20px;padding:70px;">Share</a></li>
	</div>
 </div>
</div>	 
   <% st.close();
   con.close(); %>
   
  <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
       
    }
   
    %>
</body>
 <script
  src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        $(window).scroll(function(){if($(window).scrollTop()>=25){$('header').addClass('fixed-header');
$('.logo').addClass('fixed-logo');
$('.images-container').addClass('fixed-scroll-images');
$('ul li a').addClass('fixed-a');
}else
{
    $('header').removeClass('fixed-header');
$('.logo').removeClass('fixed-logo');
$('.images-container').removeClass('fixed-scroll-images');
$('ul li a').removeClass('fixed-a');
}});
    </script>
</html>