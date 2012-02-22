<%-- 
    Document   : book
    Created on : 02 21, 12, 2:08:14 PM
    Author     : RES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*, DBConnection.*, UserPackage.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body>
      
      <%
            String title, year, synopsis, price, author;
            Boolean result;
            title = request.getParameter("bookTitle");
            author = request.getParameter("bookAuthor");
            year = request.getParameter("bookYear");
            price = request.getParameter("bookPrice");
            synopsis = request.getParameter("bookSyn");

            Book newBook = new Book();

            newBook.setTitle(title);
            newBook.setAuthor(author);
            newBook.setYear(year);
            newBook.setPrice(price);
            newBook.setSynopsis(synopsis);
            

            result = new BookManager().addBook(newBook);

           
                response.sendRedirect("index.jsp");
          


        %>
  </body>
</html>
