<%@page import="java.sql.ResultSet"%>
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
                <style>
                    table,td,tr{
                        border-collapse: collapse;
                        border-style: solid;
                    }
                    td{
                        text-align: center;
                    }
                </style>
	
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
					<li><a href="home.html">Home</a></li>
					<li><a href="profile.html"> Profile </a></li>
					<li><a href="#"> Products </a></li>
					<li><a href="post.html"> Post </a></li>
					<li><a href="#"> Order Details </a></li>
					<li class="active"><a href="notif.html"> Notification </a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!--end navbar-->
<div class="col-sm-2">
</div>

<div class="col-sm-8">
<div class="media">
<!--    <div class="media-left">
      <img src="img/img.png" class="media-object" style="width:45px">
    </div>-->
    <div class="media-body">
        <center><h1>My Product List</h1></center>
        <table style="width: 850px;">
            <caption></caption>
            <tr style=" font-size: 23px;background-color: #449d44;color: #ffffff;">
                <td>FarmerID</td><td> Type</td><td>Name </td><td>Price per Unit</td><td>Qty</td><td>Image</td><td>Status</td>
            </tr>
            <%
            
            System.out.println(user[0]+" -"+user[1]+"-"+user[2]);
                                java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="select * from products where idfarmer='"+user[1]+"' and id='"+user[0]+"'";
System.out.println(query);
ResultSet rt=st.executeQuery(query);
while(rt.next()){
            %>
            <tr style="height: 100px; font-size: 20px;background-color: #99ff99;">
                <td><%=rt.getString("id")%></td><td> <%=rt.getString("product_type")%></td><td><%=rt.getString("product_name")%> </td><td><%=rt.getString("product_price")%> per <%=rt.getString("product_unit")%></td><td><%=rt.getString("product_qty")%></td><td><img src="${pageContext.servletContext.contextPath}/GetImage1?id=<%=rt.getString("idproducts")%>" width="150" height="150"/></td><td><%=rt.getString("status_")%></td>
                <td><a href="">UPDATE</a></td>
            </tr>
            <%
}
            %>
        </table>
      <!-- Nested media object -->
<!--      <div class="media">
        <div class="media-left">
          <img src="img/img.png" class="media-object" style="width:45px">
        </div>
        <div class="media-body">
          <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

           Nested media object 
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
      </div>-->
      
    </div>
  </div>
</div>

<div class="col-sm-2">
</div>


</body>
</html>