<%-- 
    Document   : update
    Created on : Apr 11, 2017, 12:22:57 AM
    Author     : Nadanapathy
--%>


<%
       String[] user= session.getAttribute("user").toString().split(",");
java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="update profile set biography='"+request.getParameter("biography") +"',role='"+request.getParameter("role") +"',interests='"+request.getParameter("interests")+"' where idfarmer='"+user[1]+"'";
int i=st.executeUpdate(query);
if(i!=0){
    response.sendRedirect("profile.jsp");
}else{
    
}
%>