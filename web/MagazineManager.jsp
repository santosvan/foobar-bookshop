<%-- 
    Document   : MagazineManager
    Created on : 02 16, 12, 4:11:33 PM
    Author     : RES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <h1>Magazine Manager</h1>
        <h2> Add Product </h2>
        <form name ="magAdd" method ="post" action="">
            Magazine Title: <input type ="text" name="magTitle"><br>
            Magazine Price: <input type ="text" name="magPrice"><br>
            Magazine Synopsis <input type ="text" name="magSyn"><br>
            <input type ="submit" name="addMag" value="Add Magazine"><br><br>
            <h2> Delete Product </h2>   
    </body>
</html>
