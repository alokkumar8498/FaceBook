<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/ust.css" />
<script src="jquery.js"></script>
<link rel="stylesheet" media="screen and (min-width: 0px)"type="text/css" href="css/style.css">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
</head>
<body>



<section>
 <header class="header-class" style="margin-top:2px">
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

<div  style="margin-left:80%;background:white;padding:10px;width:250px;height:600px;position:fixed;margin-top:px;float:right;border-left:1px solid gray;">

	<div style="margin-top:0px;list-style : none;display:flex;padding-left:10px;" >
	    <li style="list-style:none;"><img src="images/prof.png" height="35"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><p style="padding:15px;">Alok kumar</p></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:10px;" >
	    <li style="list-style:none;"><img src="images/prof.png" height="35"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><p style="padding:15px;">Alok kumar</p></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:10px;" >
	    <li style="list-style:none;"><img src="images/prof.png" height="35"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><p style="padding:15px;">Alok kumar</p></li>
	</div>
	<div style="margin-top:0px;list-style : none;display:flex;padding-left:10px;" >
	    <li style="list-style:none;"><img src="images/prof.png" height="35"  style="padding:0px; border:1px solid red; margin-top:5px; border-radius:40px;background:cover;"/></li>
	    <li style="list-style:none;"><p style="padding:15px;">Alok kumar</p></li>
	</div>
 </div>	

<div class="header0001">
</div>
<div>
<div class="coverpad">
</div>
<form action="UploadProfile" method="post"  enctype="multipart/form-data">
<div class="coverpadx"><img src="images/cover.jpg" width="850px"/>

<div style="margin-top:-180px;">
<div><b style="color:white;background-color:black;z-index:999;padding:10px;">UPLOD COVER PHOTO</br></b></div>
<input type="file" name="coverimage" style="color:red"  /></br>
<input type="submit" value="submit"  style=""/>
</div>
</div>
</form>
<form action="UploadProfile" method="post"  enctype="multipart/form-data">
<div class="profilepic">
</div>
<div class="profilepicx"><img src="images/pppp.jpg" height="140px"/>
<div style="margin-top:-60px;width:300px;">
<div><b style="color:white;background-color:black;z-index:999;padding:10px;">UPLOD PROFILE PHOTO</br></b></div>
<input type="file" name="coverimage" style="color:red" name="profileimage"  /></br>
<input type="submit" value="submit" name="profileimage" style=""/>
</div>
</div>
<div class="username" style="margin-left:530px;">Jadavananda <br>bordoloi
</div>
</form>
</div></br>

<div style="margin-left:100px;margin-top:410px;width:400px;background:white;padding:10px;">
<form action="">
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">work</h3>
<input type="text" name="work" placeholder="Add Work Experience" style="padding:5px;width:385px;border:none;height:30px;"/>
</div>
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">Education</h3>
<input type="text" name="collegeEducation" placeholder="Add College/University" style="padding:5px;width:385px;border:none;height:30px;"/></br>
<input type="text" name="schoolEducation" placeholder="Add Secondary School" style="padding:5px;width:385px;border:none;height:30px;"/>
</div>
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">Places you've lived</h3>
<input type="text" name="currentcity" placeholder="Current City" style="padding:5px;width:385px;border:none;height:30px;"/></br>
<input type="text" name="hometown" placeholder="Home Town" style="padding:5px;width:385px;border:none;height:30px;"/>
</div>
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">Contact info</h3>
<input type="number" name="mobile" placeholder="Mobile No" style="padding:5px;width:385px;border:none;height:30px;"/></br>
</div>
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">Basic info</h3>
<input type="date" name="birthday" placeholder="Birthday" style="padding:5px;width:385px;border:none;height:30px;"/></br>
</div>
<div style="border-bottom:1px solid gray;">
<h3 style="padding:5px">Relationship</h3>
<input type="text" name="relationship" placeholder="Relationship" style="padding:5px;width:385px;border:none;height:30px;"/></br>
</div>
<div>
<input type="reset" value="Reset" style="width:100px;height:20px"/>
<input type="reset" value="Reset"/>
</div>
</form>
</div>


</body>
</html>