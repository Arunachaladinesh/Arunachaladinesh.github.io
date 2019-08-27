<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<title> Agri Cart | Login </title>
	<link rel="icon" href="img/icon.png" type="image/png" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	
	<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
</head>
<body style="background: url(img/admin.png) no-repeat; background-attachment: fixed; background-size: cover;">
	
	<!--navbar-->
	
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
                                    <li><a href="index.html"><span class="glyphicon glyphicon-user"></span>Home</a></li>
                                    <li class="active"><a href="admin_login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
	
	
	<!--content-->
	
	<div class="col-sm-4">
	
	</div>
	
	<div class="col-sm-6" >
		<div class="panel panel-default" style="background-color: #999999">
                    <div >
                    <h1>
                        Welcome to Admin Login
                    </h1>
                        <form action="admin_log_action.jsp" method="post">
		<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input id="email" type="text" class="form-control" name="username" placeholder="Admin ID">
		</div><br>
		<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input id="password" type="password" class="form-control" name="password" placeholder="Password">
		</div><br>
		
                <button type="submit" class="btn btn-info"> Log In </button>
		
		
		
	</form>
                    </div>
		</div>
	
	</div>
	
	<div class="col-sm-4">
	
	
	</div>
	
	<!--end content-->
	
	
	
	
</body>
</html>