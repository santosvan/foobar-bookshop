<%-- 
    Document   : adminIndex
    Created on : 11 16, 10, 11:53:07 AM
    Author     : Erik Sy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
    </head>
    <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center><br><br><br><br>
       
           <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow">Admin Login Page</h1><br>
                <form method="post" action="adminLogin.jsp">
            Username:<input type="text" name="username" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Password:<input type="password" name="password" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            <br><input type="submit" name="submit" value="Log-In"/>
        </form>
 </center>
    </body>
</html>
