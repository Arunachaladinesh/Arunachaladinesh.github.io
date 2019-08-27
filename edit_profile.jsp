<%@page import="java.sql.ResultSet"%>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="css/normalize.css" type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body background="load.gif">
<%
        
       String[] user= session.getAttribute("user").toString().split(",");
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
                                }
%>

<form action="update.jsp" method="post">
      
        <h1>Edit Profile</h1>
         
<!--        <fieldset>
         
          <legend><span class="number">1</span>Your basic info</legend>
          <label for="name">Name:</label>
          <input type="text" id="name" name="name">
          
          <label for="mail">FarmerID:</label>
          <input type="text" id="mail" name="id">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="password">
          
          <label>Gender:</label>
          <input type="radio" id="under_13" value="under_13" name="gender"><label for="under_13" class="light" >male</label><br>
          <input type="radio" id="over_13" value="over_13" name="gender"><label for="over_13" class="light">Female</label>
          <br>
          <label for="bio">Address:</label>
          <textarea id="bio" name="address"></textarea>
          
          <label for="name">Phone No:</label>
          <input type="text" id="name" name="contact">
          
          <label for="name">Mail:</label>
          <input type="email" id="name" name="mail">
        </fieldset>-->
        
        <fieldset>
          <legend><span class="number"></span>Your profile</legend>
          <label for="bio">Biography:</label>
          <textarea id="bio" name="biography"><%=biography%></textarea>
        </fieldset>
        <fieldset>
        <label for="job">Job Role:</label>
        <select id="job" name="role">
		<!--
          <optgroup label="Web">
            <option value="frontend_developer">Front-End Developer</option>
            <option value="php_developor">PHP Developer</option>
            <option value="python_developer">Python Developer</option>
            <option value="rails_developer"> Rails Developer</option>
            <option value="web_designer">Web Designer</option>
            <option value="WordPress_developer">WordPress Developer</option>
          </optgroup>
          <optgroup label="Mobile">
            <option value="Android_developer">Androild Developer</option>
            <option value="iOS_developer">iOS Developer</option>
            <option value="mobile_designer">Mobile Designer</option>
          </optgroup>
          <optgroup label="Business">
            <option value="business_owner">Business Owner</option>
            <option value="freelancer">Freelancer</option>
          </optgroup>
		  -->
                  <option value="<%=role%>"><%=role%></option>
            <option value="secretary">Experience</option>
            <option value="maintenance">new</option>
        
        </select>
        
          <label>Interests:</label>
          
          <input type="text" id="name" name="interests" value="<%=interest%>">
          
<!--          <input type="checkbox" id="development" value="rice" name="interests"><label class="light" for="development">Rice</label><br>
            <input type="checkbox" id="design" value="wheat" name="interests"><label class="light" for="design">Wheat</label><br>
          <input type="checkbox" id="business" value="Grains" name="interests"><label class="light" for="business">Grains</label>
        -->
        </fieldset>
        <button type="submit">Update</button>
      </form>
      
    </body>
</html>