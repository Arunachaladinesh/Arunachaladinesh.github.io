<%-- 
    Document   : signup
    Created on : Apr 10, 2017, 6:27:43 PM
    Author     : Nadanapathy
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%

    Connection con=Dbconnection.getConn();
    String sql="insert into farmer_reg(name, id, password, gender, address, contact, mail)values('"+request.getParameter("name") +"','"+request.getParameter("id") +"','"+request.getParameter("password") +"','"+request.getParameter("gender") +"','"+request.getParameter("address") +"','"+request.getParameter("contact") +"','"+request.getParameter("mail") +"')";
    PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
    ps.execute();
    ResultSet rt=ps.getGeneratedKeys();
    if(rt.next()){
        int gid=rt.getInt(1);
        System.out.println("Gid :"+gid);
      
        java.sql.Statement st=con.createStatement();
        int i=st.executeUpdate("insert into profile(idfarmer, id, biography, role, interests, status_)values('"+gid+"','"+request.getParameter("id") +"','"+request.getParameter("biography") +"','"+request.getParameter("role") +"','"+request.getParameter("interests") +"','yes')");
        if(i!=0){
            out.println("succcess");
            response.sendRedirect("index.html");
        }
        else{
            
        }
    }

%>
