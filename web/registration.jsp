<%-- 
    Document   : registration
    Created on : 10 18, 10, 2:49:18 PM
    Author     : CCS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
    </head>
<body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg">
        <center><br><br><br><br>
       
       <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow">Registration</h1><br>
        <form name="form1" method="post" action="registrationAction.jsp">
            Username: <input type="text" name="username" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Password: <input type="password" name="password" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Name: <input type="text" name="name" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Address: <input type="text" name="address" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            E-Mail: <input type="text" name="email" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Phone Number: <input type="text" name="phone" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            Cellphone Number: <input type="text" name="cell" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
            <br><input type="submit" name="Submit" value="Submit"/>
        </form>
        </center>
    </body>
</html>
