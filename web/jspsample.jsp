<%-- 
    Document   : jspsample
    Created on : 11 8, 10, 3:14:37 PM
    Author     : CCS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%= new java.util.Date()%>

        <%-- comments --%>

        <%
           for(int i=1; i<7; i++)
            {

            %>
               <h<%= i%>> Header <%= i%>  </h<%= i%>>
        <%
            }
        %>

    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
