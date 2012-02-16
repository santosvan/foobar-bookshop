<%-- 
    Document   : CDManager
    Created on : 02 16, 12, 4:11:55 PM
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
        <form name ="cdAdd" method ="post" action="">
            CD Title: <input type ="text" name="cdTitle"><br>
            CD Price: <input type ="text" name="cdPrice"><br>
            CD Synopsis <input type ="text" name="cdSyn"><br>
            <input type ="submit" name="addCD" value="Add CD"><br><br>
            <h2> Delete Product </h2>   
    </body>
</html>
