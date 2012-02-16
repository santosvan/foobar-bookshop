<%-- 
    Document   : userPage
    Created on : 02 16, 12, 8:48:50 AM
    Author     : RES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <h1>Book Manager</h1>
        <h2> Add Product </h2>
        <form name ="bookAdd" method ="post" action="">
            Book Title: <input type ="text" name="bookTitle"><br>
            Book Price: <input type ="text" name="bookPrice"><br>
            Book Synopsis <input type ="text" name="bookSyn"><br>
            <input type ="submit" name="addBook" value="Add Book"><br><br>
            <h2> Delete Product </h2>   
    </body>
</html>
