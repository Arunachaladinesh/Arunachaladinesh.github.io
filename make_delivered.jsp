<%-- 
    Document   : make_delivered
    Created on : Apr 12, 2017, 11:22:59 AM
    Author     : Nadanapathy
--%>

<%@page import="java.net.URLDecoder"%>
<%
    String id=URLDecoder.decode(request.getQueryString());
java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String query="update orders set isdelivered='yes' where idorders='"+id+"' ";
int i=st.executeUpdate(query);
if(i!=0){
    response.sendRedirect("orders.jsp");
}
else{
     response.sendRedirect("orders.jsp");
}


%>
