<%-- 
    Document   : DVDManager
    Created on : 02 16, 12, 4:12:05 PM
    Author     : RES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <h1>DVD Manager</h1>
        <h2> Add Product </h2>
        <form name ="dvdAdd" method ="post" action="">
            DVD Title: <input type ="text" name="dvdTitle"><br>
            DVD Price: <input type ="text" name="dvdPrice"><br>
            DVD Synopsis <input type ="text" name="dvdSyn"><br>
            <input type ="submit" name="addDVD" value="Add DVD"><br><br>
            <h2> Delete Product </h2>   
    </body>
</html>
