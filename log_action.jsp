<%-- 
    Document   : log_action
    Created on : Apr 10, 2017, 7:38:19 PM
    Author     : Nadanapathy
--%>

<%-- 
    Document   : user_log_action
    Created on : Apr 6, 2017, 1:12:56 AM
    Author     : Nadanapathy
--%>


<%
    
    
    
java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="select * from farmer_reg where id='"+request.getParameter("username") +"' and password='"+request.getParameter("password") +"'";
java.sql.ResultSet rt=st.executeQuery(query);
if(rt.next()){
  
    System.out.println("userid "+rt.getString("idfarmer_reg"));
    String userinfo=request.getParameter("username")+","+rt.getString("idfarmer_reg")+","+rt.getString("name");
    session.setAttribute("user", userinfo);
//      HttpSession userid=request.getSession(true);
//   userid.setAttribute("id", );
    
    response.sendRedirect("home.jsp");
}else{
    out.println("<center><h1>Invalid Username or Password</h1></center>");
}
%>