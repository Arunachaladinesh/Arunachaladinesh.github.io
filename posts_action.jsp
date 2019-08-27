<%-- 
    Document   : post
    Created on : Apr 7, 2017, 1:55:31 AM
    Author     : Nadanapathy
--%>

<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUtils"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    try{
//        File temp=new File(request.getContextPath()+"");
//        temp.mkdir();
        
        /*create temporary directory */
        String tmpDirStr = System.getProperty("java.io.tmpdir");
        out.println("ok ");
    if (tmpDirStr == null) {
      throw new IOException(
        "System property 'java.io.tmpdir' does not specify a tmp dir");
    }
      out.println("ok 1");
    File tmpDir = new File(tmpDirStr);
    if (!tmpDir.exists()) {
      boolean created = tmpDir.mkdirs();
      if (!created) {
        throw new IOException("Unable to create tmp dir " + tmpDir);
      }
    }
    else{
        try{
       FileUtils.cleanDirectory(tmpDir);
        }
        catch(Exception e){
            out.println("clean Directory :"+e);
        }
       
    }
         out.println("ok 2");
MultipartRequest m=new MultipartRequest(request,tmpDir.getAbsolutePath(),100014633);
  out.println("ok 3");
  
  String[] user=session.getAttribute("user").toString().split(",");
      String uname=user[0];
     
     String uid=user[1];
    //  String uid="3";
      out.println("usrename :"+uname);
      out.println("id :"+uid);
      
File file=m.getFile("file");
String article=m.getParameter("article");

java.sql.Connection con=pack.Dbconnection.getConn();
if(file!=null){
    out.println("if");
    java.sql.PreparedStatement ps=con.prepareStatement("insert into  posts(idfarmer_reg, mediafile, mime_type, extension, type_, permission, content, ismedia, iscontent,name,farmerid)values(?,?,?,?,?,?,?,?,?,?,?)");
     ps.setString(1, uid);
     ps.setAsciiStream(2, new FileInputStream(file),file.length());
    //get mime type  
     Path path=Paths.get(file.getAbsolutePath());
String mime_type=Files.probeContentType(path);
     
String fileName=file.getName();
String[] ex=file.getName().split("\\.");
out.println(ex[1]);

/* get extension */
if(fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
        ex[1]=fileName.substring(fileName.lastIndexOf(".")+1);
else ex[1]="";

     ps.setString(3, mime_type);
     ps.setString(4, ex[1]);
     ps.setString(5, mime_type);
     ps.setString(6, "public");
     ps.setString(7, article);
     ps.setString(8, "yes");
     ps.setString(9, "yes");
     ps.setString(10, user[2]);
     ps.setString(11, user[0]);
     ps.execute();
     ps.close();
}else{
      out.println("else");
      java.sql.PreparedStatement ps=con.prepareStatement("insert into  posts(idfarmer_reg,permission, content, ismedia, iscontent,name,farmerid)values(?,?,?,?,?,?,?)");
      ps.setString(1, uid);
      ps.setString(2, "public");
      ps.setString(3, article);
      ps.setString(4, "no");
      ps.setString(5, "yes");
      ps.setString(6, uname);
      ps.setString(7, user[0]);
      ps.execute();
      ps.close();
    
}
con.close();
out.println("success...");
response.sendRedirect("posts.jsp");
    }catch(Exception e){
        out.println("Main Exception"+e);
    }
%>
