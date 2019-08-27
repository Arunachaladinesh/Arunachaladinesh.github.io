<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<title> Agri Cart | profile </title>
	<link rel="icon" href="img/icon.png" type="image/png" />
	<link rel="stylesheet" href="css/profile.css" type="text/css" />
	
	<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
</head>
<body>
<%
        
       String[] user= session.getAttribute("user").toString().split(",");
        
%>

<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
				</button>
				<a class="navbar-brand" href="#"> Agro Cart </a>
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="home.jsp">Home</a></li>
                                    <li class="active"><a href="profile.jsp"> <%=user[2]%> </a></li>
                                    <li><a href="product.jsp"> Products </a></li>
                                    <li><a href="posts.jsp"> Post </a></li>
					<li><a href="#"> Order Details </a></li>
<!--                                        <li><a href="notification.jsp"> Notification </a></li>-->
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
	
	
	<!--content-->
	<img class="cover-img" src="img/cover.jpg" />
	<div class="col-sm-1"></div>
	<div class="col-sm-8">
		<div class="panel panel-default" style="box-shadow: 1px 1px 10px gray;">
				 <img class="left-prf" src="${pageContext.servletContext.contextPath}/GetImage?id=<%=user[1]%>" />
				<h3> Welcome,<%=user[2]%> </h3>
                                  <form style="width: 200px;" action="profile_photo.jsp?profile.jsp" method="post" enctype="multipart/form-data">
                                    <input type="file" name="photo" required="required"> <input type="submit" value="Update Profile Photo">
                                </form><br>
                                <%
                                System.out.println(user[0]+" -"+user[1]+"-"+user[2]);
                                java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="select * from profile where idfarmer='"+user[1]+"'";
System.out.println(query);
ResultSet rt=st.executeQuery(query);
 String biography=null,role=null,interest=null;
                                if(rt.next()){
                                    biography=rt.getString("biography");
                                    role=rt.getString("role");
                                    interest=rt.getString("interests");
                                %>
				<p><%=rt.getString("role")%></p>
				<p><%=rt.getString("interests")%></p>
				<p><%=rt.getString("biography")%></p>
                                <%
                                }
                                %>
		</div>
		
		<div class="panel panel-default"style="padding: 10px;box-shadow: 1px 1px 10px gray;">
			<h2 class="prg-head"> Profile Strength: Advanced </h2> 
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
					70%
				</div>
			</div>
		</div>
		
<!--		<div class="panel panel-default" style="text-align: left;box-shadow: 1px 1px 10px gray;">
			<p class="prf-para"> <span> 4 </span> Who's viewed your profile </p>
			<p class="prf-para1"> <span> 0 </span> Views of your post in feed </p>
		</div>-->
		
		<div class="panel panel-default" style="text-align: left;padding: 10px;box-shadow: 1px 1px 10px gray;">
			<h2> Strength your Profile </h2>
			
			<div class="panel panel-default" style="text-align: left; padding: 10px;">
				
				<div class="media">
<!--  <div class="media-left">
    <img src="img/suit.png" class="media-object" style="width:60px;">
  </div>-->
  <div class="media-body">
    <h4 class="media-heading" style="margin-top: 13px;"><%=biography%></p>
  </div>
</div>
			</div>
<!--			<button type="button" class="btn btn-default"> Not Now </button>
			<button type="button" class="btn btn-primary"> Add Past Position </button>-->
		</div>
		
		<div class="panel panel-default" style="text-align: left;box-shadow: 1px 1px 10px gray;">
			<h2> Experience </h2>
			
			<div class="media">
  <div class="media-left">
    <img src="img/profile.png" class="media-object" style="width:60px;">
  </div>
  <div class="media-body">
    <h4 class="media-heading"><%=role%></h4>
    
	<p><%=biography%> </p>
  </div>
  </div>
		<div class="sep1"></div>
  
	
	<div class="sep"></div>
	
<!--	<h2> Education </h2>-->
			
<!--			<div class="media">
  <div class="media-left">
    <img src="img/profile.png" class="media-object" style="width:60px;">
  </div>
  <div class="media-body">
    <h4 class="media-heading">Senior Vice President</h4>
    <p>B2L Software Solutions</p>
	<p> Dates EmployedFeb 2015 ? Present Employment Duration2 yrs </p>
  </div>
  </div>-->
  
  
  <div class="sep"></div>
	
<!--	<h2> Volunteer Experience </h2>-->
			
<!--			<div class="media">
  <div class="media-left">
    <img src="img/profile.png" class="media-object" style="width:60px;">
  </div>
  <div class="media-body">
    <h4 class="media-heading">Senior Vice President</h4>
    <p>B2L Software Solutions</p>
	<p> Dates EmployedFeb 2015 ? Present Employment Duration2 yrs </p>
  </div>
  </div>-->
			
		</div>
		
	</div>
	
<!--	<div class="col-sm-3">
            <a href="edit_profile.jsp"> Edit Profile </a>
		<div class="btn-group">
  <button type="button" class="btn btn-primary"> Add new profile section </button>
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">  </a></li>
    <li><a href="#">Smartphone</a></li>
  </ul>
</div>

	<p class="par">    <a href="edit_profile.jsp"> Edit Profile </a> </p>
	<p class="par"><a href="#"> Add profile in another language </a></p>
		
	</div>-->
	
	<!--end content-->


</body>
</html>