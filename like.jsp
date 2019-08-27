<%-- 
    Document   : like
    Created on : Apr 7, 2017, 4:31:14 AM
    Author     : Nadanapathy
--%>

<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Url"%>
<%
java.sql.Connection con=pack.Dbconnection.getConn();
java.sql.Statement st=con.createStatement();
String id=URLDecoder.decode(request.getQueryString());
String query="update posts set likes=(likes+1) where idposts='"+id+"'";
int i=st.executeUpdate(query);
if(i!=0){
    response.sendRedirect("posts.jsp");
}
else{
}

%>
