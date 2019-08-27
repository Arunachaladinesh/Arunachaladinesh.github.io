<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<link rel="icon" href="img/icon.png" type="image/png" />
	<title> Agri Cart | Post </title>
	<link rel="stylesheet" href="css/post.css" type="text/css" />
	
	<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
</head>
<body style="background: url(img/BG.jpg) no-repeat; background-attachment: fixed; background-size: cover;">
	<%
      //  HttpSession user=request.getSession();
      String[] user=session.getAttribute("user").toString().split(",");
      String uname=user[0];
      System.out.println("username :"+user[0]+"user id :"+user[1]);
        java.sql.Connection con=pack.Dbconnection.getConn();
      // pack.DbBean.driver;
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
				<a class="navbar-brand" href="#"> Agro Cart </a>
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li ><a href="home.jsp">Home</a></li>
                                    <li><a href="profile.jsp"> <%=user[2]%> </a></li>
                                    <li><a href="product.jsp"> Products </a></li>
                                    <li class="active"><a href="posts.jsp"> Post </a></li>
                                    <li><a href="orders.jsp"> Order Details </a></li>
<!--                                        <li><a href="notification.jsp"> Notification </a></li>-->
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
	
	
	<!--content-->
	<div class="col-sm-2">
		<div class="panel panel-default">
			<div class="panel-heading">
			<br><br>
			</div>
				<img class="left-prf" src="${pageContext.servletContext.contextPath}/GetImage?id=<%=user[1]%>" />
				<h3 class="left-head"> Welcome, Former! </h3>
				     <%
                        java.sql.Statement st=con.createStatement();
                        String query="select view_count,(SELECT count(idmynetwork) FROM `mynetwork` where userid="+user[1]+") from farmer_reg where idfarmer_reg="+user[1]+"";
                        java.sql.ResultSet rt=st.executeQuery(query);
                        
                                 if(rt.next()){
                                 %>
			<div class="left-sep"></div>
				<p class="left-num"><%=rt.getString("view_count")%> </p>
				<p class="left-para"> who viewed your profile </p>
			<div class="left-sep"></div>
                       
				<p class="left-num1"> <%=rt.getString("(SELECT count(idmynetwork) FROM `mynetwork` where userid="+user[1]+")")%> </p>
				<p class="left-para1"> connections </p>
				<h4 class="left-head1"> manage your network </p>
                                <%
                                 }
                                 rt.close();
                                 st.close();
                                %>
		</div>
	</div>
	
	<div class="col-sm-8">
	
		<div class="panel panel-default">
			<p class="cen-para"> Share an article, photo, or update </p>
                        <form action="posts_action.jsp" name="post" method="post" enctype="multipart/form-data" >
			<input class="chs-img" type="file" name="file">
				<div class="center-sep"></div>
                                <textarea name="article" placeholder=" Write an article" required="required" style="width: 800px;margin-left: 30px;"></textarea>
<!--					<a class="cent-link" href="#"> Write an article </a>-->
<button type="submit" class="btn btn-info"> Post </button>
                        </form>
						<div class="center-sep1"></div>
		</div>
		<%
      
         st=con.createStatement();
 query="select * from posts where permission='public' or permission='friends' order by idposts desc";
       rt=st.executeQuery(query);
      
      while(rt.next()){
          %>
           <div class="panel panel-default">
			<div class="panel-heading">
				<h4><%=rt.getString("name")%></h4> <span> commented on this </span> 
			</div>
			<div class="panel-body">
                            <img class="prf" src="${pageContext.servletContext.contextPath}/GetImage?id=<%=rt.getString("idfarmer_reg")%>" />
<!--				<h4><%=rt.getString("name")%></h4>-->
				<p class="head-btm"> Welcome All Business Link Invitations! President at MK Accounting & Tax </p>
				<p class="head-btm2"> 11h </p>
				<p class="head-btm1"><%=rt.getString("content")%> </p>
                                <%
                                if(rt.getString("ismedia").equalsIgnoreCase("yes")){
                                    %>
                                    <img class="cont-img" src="${pageContext.servletContext.contextPath}/GetImage2?id='<%=rt.getString("idposts")%>'"  width="00" height="100"/>
                                <%
                                }
                                %>
			
				<p class="head-btm3"> <%=rt.getString("likes")%> Likes * 2 Comments </p>
			</div>
			<div class="panel-footer">
                            <a class="like" href="like.jsp?<%=rt.getString("idposts")%>"> Like </a>
				<a class="comm" href="#"> Comments </a>
				
			</div>
		</div>     
            
            <%
      }
      rt.close();
      st.close();
        %>
		<div class="panel panel-default">
			<div class="panel-heading">
				<p> RICHARD AMPONSAH-ABABIO <span> commented on this </span> </p>
			</div>
			<div class="panel-body">
				<img class="prf" src="img/profile.png" />
				<h4> Mobarza Khan </h4>
				<p class="head-btm"> Welcome All Business Link Invitations! President at MK Accounting & Tax </p>
				<p class="head-btm2"> 11h </p>
				<p class="head-btm1"> This week kicked off with the transportation of 270ton Engine. This job was done in collaboration with Mammoet and Transtas Global Logistics #apexshipping #heavylift #projectcargo #ghana </p>
				<img class="cont-img" src="img/slide1.jpg" />
				<p class="head-btm3"> 19 Likes * 2 Comments </p>
			</div>
			<div class="panel-footer">
				<a class="like" href="#"> Like </a>
				<a class="comm" href="#"> Comments </a>
				<a class="share" href="#"> Share </a>
			</div>
		</div>
	
	</div>
	
	<div class="col-sm-2">
	
	</div>
	
	
	<!--end content-->
	
	
	
	
</body>
</html>