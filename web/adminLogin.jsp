<%-- 
    Document   : adminLogin
    Created on : 11 16, 10, 11:49:27 AM
    Author     : Erik Sy
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
    <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center><br><br><br><br>
          <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            boolean result = new UserManager().checkAdmin(username, password);

            if(result) {
                session.setAttribute("username", username);
                request.setAttribute("username", username);
                request.setAttribute("password", password);
                response.sendRedirect("adminPage.jsp");
            }
            else
                response.sendRedirect("adminIndex.jsp");


        %>
        </center>
    </body>
</html>
