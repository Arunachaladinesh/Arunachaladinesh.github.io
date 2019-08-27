<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<title> Agri Cart | Home </title>
	<link rel="icon" href="img/icon.png" type="image/png" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	
	<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
	
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
	<!--navbar-->
	
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
				</button>
				<a class="navbar-brand" href="#"> Agro Cart </a><br>
				
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
                                    <li class="active"><a href="home.jsp">Home</a></li>
                                    <li><a href="profile.jsp"> <%=user[2]%> </a></li>
                                    <li><a href="product.jsp"> Products </a></li>
                                    <li><a href="posts.jsp"> Post </a></li>
                                    <li><a href="orders.jsp"> Order Details </a></li>
<!--                                        <li><a href="notification.jsp"> Notification </a></li>-->
                                       
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
	
	
	<!--content-->
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/slide1.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="img/slide2.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="img/slide3.jpg" alt="Flower">
    </div>

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	
	<!--end content-->
	
	
	<!--content-->
	
	
	
	<div class="col-sm-12">
		
		 <div class="blog-top">
			  <div class="col_1_of_b span_1_of_b">
					<h3><a href="single.html">Cash crop:</a></h3>
					<a href="single.html"><img src="images1/b1.jpg" alt=""></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><i class="admin"> </i><a class="admin" href="#"><span> </span> Admin </a></li>
							<li><i class="date"> </i><a class="p-date" href="#"><span> </span>2-04-2017 </a></li>
							<li><i class="comment"> </i><a class="p-blog" href="#"><span> </span>No Comments</a></li>
						</ul>
				    </div>
					<p>a farmer will raise crops to market for consumption, medical use, animal food production, and the growing herbal industry. A farmer in this field will be responsible 
for the planting, fertilization, and harvesting of the crops, as well as transport to the proper production elevators for sale at harvest. Cash crop farmers will need 
a strong working knowledge of planting times, harvesting times, and weather patterns in order to gain a good footing in their field.</p>
					<div class="button"><a href="#">Read More</a></div>
				</div>
				<div class="col_1_of_b span_1_of_b">
					<h3><a href="single.html">Husbandry</a></h3>
					<a href="single.html"><img src="images1/b2.jpg" alt=""></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><i class="admin"> </i><a class="admin" href="#"><span> </span> Admin </a></li>
							<li><i class="date"> </i><a class="p-date" href="#"><span> </span>4-04-2017 </a></li>
							<li><i class="comment"> </i><a class="p-blog" href="#"><span> </span>No Comments</a></li>
						</ul>
				    </div>
					<p>farmers concentrate on providing healthy, hearty livestock for later processing for consumption. Farmers often specialize in one type of animal in this field, 
carefully breeding the livestock to produce the best quality offspring each season. Offspring are then raised to take the place of the current breeding stock over 
time, with the current breeding stock sold after a period of time. Animal husbandry requires a strong knowledge of blood lines and species types, as well as the best 
possible out-crossings of those types to provide the best results in breeding.</p>
					<div class="button"><a href="#">Read More</a></div>
				</div>
				<div class="clear"></div>
			  </div>
			  <div class="blog-top">
			  <div class="col_1_of_b span_1_of_b">
					<h3><a href="single.html">Grain and forage crop</a></h3>
					<a href="single.html"><img src="images1/b3.jpg" alt=""></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><i class="admin"> </i><a class="admin" href="#"><span> </span> Admin </a></li>
							<li><i class="date"> </i><a class="p-date" href="#"><span> </span>12-04-2014 </a></li>
							<li><i class="comment"> </i><a class="p-blog" href="#"><span> </span>No Comments</a></li>
						</ul>
				    </div>
					<p>A grain and forage crop farmer grows grains such as wheat, barley, canola, oats, rye, flax, peas and speciality crops or forage crops. Specialty crops are small 
acreage crops such as spices, specialty oats and barley, hemp, confectionary seeds, bird seed, medicinal crops or processing crops such as corn, beans or carrots.
Grain and forage crop farmers will determine the amount and kinds of crops to be grown and carry out or oversee the cultivation, fertilizing, planting, spraying and 
harvesting of the crops. 
</p>
					<div class="button"><a href="#">Read More</a></div>
				</div>
				<div class="col_1_of_b span_1_of_b">
					<h3><a href="single.html">

Harvesting</a></h3>
					<a href="single.html"><img src="images1/b4.jpg" alt=""></a>
					
					<div class="blog-poast-info">
						<ul>
							<li><i class="admin"> </i><a class="admin" href="#"><span> </span> Admin </a></li>
							<li><i class="date"> </i><a class="p-date" href="#"><span> </span>12-04-2014 </a></li>
							<li><i class="comment"> </i><a class="p-blog" href="#"><span> </span>No Comments</a></li>
						</ul>
				    </div>
					<p>Harvesting is the process of collecting the mature rice crop from the field. Paddy harvesting activities include reaping, stacking, handling, threshing, cleaning, and 
hauling. These can be done individually or a combine harvester can be used to perform the operations simultaneously.
It is important to apply good harvesting methods to be able to maximize grain yield, and minimize grain damage and quality deterioration.</p>
					<div class="button"><a href="#">Read More</a></div>
				</div>
				<div class="clear"></div>
			  </div>
			</div>
	
	
	
	
	
		
	</div>
	
	
	
	
</body>
</html>