<%-- 
    Document   : profile_photo
    Created on : Apr 9, 2017, 12:33:37 AM
    Author     : Nadanapathy
--%>

<%@page import="java.net.URLDecoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUtils"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    
    String qs=URLDecoder.decode(request.getQueryString());
    
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

File file=m.getFile("photo");

java.sql.Connection con=pack.Dbconnection.getConn();
String query="update farmer_reg set photo=? where idfarmer_reg=?";
 java.sql.PreparedStatement ps=con.prepareStatement(query);
 ps.setAsciiStream(1, new FileInputStream(file),file.length());
 ps.setString(2, user[1]);
 ps.execute();
 response.sendRedirect(qs);

%>