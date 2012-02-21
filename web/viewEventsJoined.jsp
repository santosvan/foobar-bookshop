<%-- 
    Document   : viewEventsJoined
    Created on : 11 23, 10, 8:28:21 PM
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
   <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg">
        <center><br><br><br><br>

           <%
          ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT eventname FROM eventjoined ");

            while(rs.next())
                {
                out.println(rs.getString(1));
                %>
                <br>
                <%
                }
        %>
       
 <form name ="form2" method ="post" action ="viewUser.jsp">
    <br><input type="submit" name="return" value="Return"/>
</form>
      </center>
    </body>
</html>
