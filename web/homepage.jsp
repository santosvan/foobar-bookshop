<%-- 
    Document   : homepage
    Created on : 10 13, 10, 3:16:55 PM
    Author     : CCS
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
   <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center>
        <%

        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("index.jsp");
            }
        else{
        out.print("Hello ");
        out.print(username);
        }
        %>
       
        
       <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow">Event Registration </h1>

<form name ="form1" method ="post" action ="registerEvent.jsp">

      <input type="submit" name="JoinEvent" value="Join Event"/>
</form>

 <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow"> Cancel Registration </h1>
<form name ="form2" method ="post" action ="cancelRegistration.jsp">
      <input type="submit" name="Cancel" value="Cancel Registration"/>
    </form>
<br>
<br>
<a href="Logout.jsp">LOG OUT</a>
 </center>
    </body>
</html>
