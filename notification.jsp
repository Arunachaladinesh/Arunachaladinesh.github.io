<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<link rel="icon" href="img/icon.png" type="image/png" />
	<title> Agri Cart | Notification </title>
	<link rel="stylesheet" href="css/post.css" type="text/css" />
	
	<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
</head>
<body>
<%
      //  HttpSession user=request.getSession();
      String[] user=session.getAttribute("user").toString().split(",");
      String uname=user[0];
      System.out.println("username :"+user[0]+"user id :"+user[1]);
        java.sql.Connection con=pack.Dbconnection.getConn();
      // pack.DbBean.driver;
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
					<li ><a href="home.jsp">Home</a></li>
                                    <li><a href="profile.jsp"> <%=user[2]%> </a></li>
                                    <li><a href="product.jsp"> Products </a></li>
                                    <li><a href="posts.jsp"> Post </a></li>
					<li ><a href="#"> Order Details </a></li>
                                        <li class="active"><a href="notification.jsp"> Notification </a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
<div class="col-sm-2">
</div>

<div class="col-sm-8">
<div class="media">
    <div class="media-left">
      <img src="img/img.png" class="media-object" style="width:45px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      
      <!-- Nested media object -->
      <div class="media">
        <div class="media-left">
          <img src="img/img.png" class="media-object" style="width:45px">
        </div>
        <div class="media-body">
          <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

          <!-- Nested media object -->
          <div class="media">
            <div class="media-left">
              <img src="img/img.png" class="media-object" style="width:45px">
            </div>
            <div class="media-body">
              <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
          </div>
          
        </div>
      </div>
      
    </div>
  </div>
</div>

<div class="col-sm-2">
</div>


</body>
</html>