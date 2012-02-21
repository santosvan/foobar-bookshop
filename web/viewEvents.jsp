<%-- 
    Document   : viewEvents
    Created on : 11 21, 10, 2:45:32 AM
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

        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("adminIndex.jsp");
            }
        else{
        out.print("Hello ");
        out.print(username);
        }
        %>
        <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow">Event List</h1><br>
         <%
          ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM eventlist");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>" + "<B>" + "Event Name" + "</td>" );
            out.println("<td>" + "<B>" + "Description" + "</td>" );
            out.println("<td>" + "<B>" + "Start Date" + "</td>" );
            out.println("<td>" + "<B>" + "Time Start" + "</td>" );
            out.println("<td>" + "<B>" + "Time End" + "</td>" );
            out.println("<td>" + "<B>" + "Status" + "</td>");
            out.println("</tr>");


            while(rs.next())
                {
                out.println("<tr>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("description") + "</td>");
                out.println("<td>" + rs.getString("startdate")+"</td>");
                out.println("<td>" + rs.getString("timestart")+"</td>");
                out.println("<td>" + rs.getString("finishtime")+"</td>");
                out.println("<td>" + rs.getString("status")+ "</td>" +  "<br>");
                out.println("</tr>");

                }
            out.println("</table>");
        %>
       

     <form name ="form2" method ="post" action ="adminPage.jsp">
    <br><input type="submit" name="return" value="Return"/>
</form>
 </center>
        </body>
</html>
