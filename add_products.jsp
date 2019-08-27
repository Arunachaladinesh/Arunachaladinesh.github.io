<%-- 
    Document   : add_products
    Created on : Apr 11, 2017, 12:33:08 AM
    Author     : Nadanapathy
--%>


<%@page import="java.io.FileInputStream"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%
 //String qs=URLDecoder.decode(request.getQueryString());
    
String tmpDirStr = System.getProperty("java.io.tmpdir");
        
    if (tmpDirStr == null) {
      throw new IOException(
        "System property 'java.io.tmpdir' does not specify a tmp dir");
    }
      
    File tmpDir = new File(tmpDirStr);
    if (!tmpDir.exists()) {
      boolean created = tmpDir.mkdirs();
      if (!created) {
        throw new IOException("Unable to create tmp dir " + tmpDir);
      }
    }
//    else{
//        try{
//       FileUtils.cleanDirectory(tmpDir);
//        }
//        catch(Exception e){
//            out.println("clean Directory :"+e);
//        }
//       
//    }
      
MultipartRequest m=new MultipartRequest(request,tmpDir.getAbsolutePath(),100014633);

 String[] user=session.getAttribute("user").toString().split(",");
 
java.sql.Connection con=pack.Dbconnection.getConn();
String query="insert into products(idfarmer, id, product_type, product_name, product_unit, product_price, product_qty, product_image, status_)values(?,?,?,?,?,?,?,?,?)";
java.sql.PreparedStatement ps=con.prepareStatement(query);
ps.setString(1, user[1]);
ps.setString(2, user[0]);
ps.setString(3, m.getParameter("ptype"));
ps.setString(4, m.getParameter("pname"));
ps.setString(5, m.getParameter("punit"));
ps.setString(6, m.getParameter("pprice"));
ps.setString(7, m.getParameter("pqty"));
ps.setAsciiStream(8, new FileInputStream(m.getFile("pimage")));
ps.setString(9, "yes");

ps.execute();
response.sendRedirect("product.jsp?yes='stored'");

%>