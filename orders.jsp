<%-- 
    Document   : orders
    Created on : Apr 12, 2017, 11:02:32 AM
    Author     : Nadanapathy
--%>
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
                    table{
                        width: 820px;
                       
                    }
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
      //  HttpSession user=request.getSession();
      String[] user=session.getAttribute("user").toString().split(",");
      String uname=user[0];
      System.out.println("username :"+user[0]+"\t user id :"+user[1]);
        //java.sql.Connection con=pack.Dbconnection.getConn();
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
                                    <li class="active"><a href="orders.jsp"> Order Details </a></li>
<!--                                        <li><a href="notification.jsp"> Notification </a></li>-->
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
<!--      <img src="img/img.png" class="media-object" style="width:45px">-->
    </div>
    <div class="media-body">
        <table>
            <caption><center><h1>Orders</h1></center></caption>
            <tr style="height: 50px;font-size: 18px;">
                <td>CUSTOMER ID</td>
                <td>CUSTOMER NAME</td>
                <td>PRODUCT NAME</td>
                <td>QTY</td>
                <td>PRICE</td>
                <td>ISCONFIRMED</td>
                <td>ISDELIVERED</td>
            </tr>
            
            <%
            java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="SELECT * FROM `orders` where idproducts in (select idproducts from farmer_reg where idfarmer_reg="+user[1]+" and id='"+user[0]+"') order by isdelivered asc";
System.out.println("order query :"+query);
java.sql.ResultSet rt=st.executeQuery(query);
while(rt.next()){
            %>
            <tr style="height: 30px;font-size: 18px;">
                
                <td><%=rt.getString("cid")%> </td>
                <td><%=rt.getString("cname")%> </td>
                <td><%=rt.getString("pname")%> </td>
                <td><%=rt.getString("pqty")%> </td>
                <td><%=rt.getString("pprice")%> </td>
                <td><%=rt.getString("isconfirmed")%> </td>
                <td><%=rt.getString("isdelivered")%>&nbsp;&nbsp;&nbsp;&nbsp;<br><a href="make_delivered.jsp?<%=rt.getString("idorders")%>">make Delivered</a> </td>
            </tr>
            <%
}
            %>
        </table>
      
    </div>
  </div>
</div>

<div class="col-sm-2">
</div>


</body>
</html>
