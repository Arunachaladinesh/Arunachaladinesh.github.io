


<%
  try {
             String uname=request.getParameter("username");
           String pass=request.getParameter("password");
           
           if(uname.equalsIgnoreCase("admin")&&pass.equalsIgnoreCase("admin")){
               out.println("success... ");
               HttpSession admin=request.getSession(true);
               admin.setAttribute("id", "adminid");
              response.sendRedirect("admin_page.jsp");
           }
           else{
             out.println("<center><img src='images/err.png' ><p style='font-size: 30px;color: #AA3300;'>Error ! Incorect username or password !</p></center>");
             
           }
        } 
        catch(Exception e){
            out.println(e);
        }
%>