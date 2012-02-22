<%-- 
    Document   : loginAction
    Created on : 11 8, 10, 3:29:38 PM
    Author     : CCS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="UserPackage.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
    </head>
   <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg">
        <center><br><br><br><br>
       <%   
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            //String username_check = request.getParameter("username");
            //String password_check = request.getParameter("password");
            boolean result = new UserManager().checkUser(username, password);
            boolean result2 = new UserManager().checkUser2(username);
          
            
            if(result){
                session.setAttribute("username", username);
                request.setAttribute("username", username);
                request.setAttribute("password", password);
                response.sendRedirect("homepage.jsp");
                }
            else if (result2){
               %> <script type ="text/javascript">alert("The password given is incorrect."); </script> <%
               response.sendRedirect("index.jsp");
            }
            else
                %> <script type ="text/javascript"> alert("The username given is not found."); </script> <%
                response.sendRedirect("index.jsp");
            

            
        %>
        </center>
    </body>
</html>
