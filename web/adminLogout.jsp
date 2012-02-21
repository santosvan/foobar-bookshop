<%-- 
    Document   : adminLogout
    Created on : 11 22, 10, 12:56:40 PM
    Author     : Erik Sy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, DBConnection.*, UserPackage.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
    </head>
    <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center><br><br><br><br>
               <%
        session.setAttribute("username", null);
        request.setAttribute("username", null);
        request.setAttribute("password", null);
        response.sendRedirect("index.jsp");
    %>
    </center>
    </body>
</html>
