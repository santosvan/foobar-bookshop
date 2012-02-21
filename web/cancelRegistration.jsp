<%-- 
    Document   : cancelRegistration
    Created on : 11 16, 10, 10:26:07 PM
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
    <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center>
         <%
       
        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("index.jsp");
            }
        else{
       
        out.print(username);
        }
        %>
   

         <%
            String eventName;
            boolean result;

            eventName = request.getParameter("eName");

            Event newEvent = new Event();

            newEvent.setUsername(username);
            newEvent.setName(eventName);

            result = new EventManager().cancelRegistration(newEvent);


        %>
       
<style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow"> Cancel Registration </h1>
   <form name ="form1" method ="post" action ="">
     <select name="eName"  style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br><br>
      <%
         ConnectionFactory myFactory1 = ConnectionFactory.getFactory();
         Connection conn1 = myFactory1.getConnection();
         Statement st1 = conn1.createStatement();
         ResultSet rs1 = st1.executeQuery("SELECT eventname FROM eventjoined WHERE username= '"+ session.getAttribute("username") +"'   ");

        while(rs1.next())
        {
            out.println("<option>" + rs1.getString(1)+ "</option>");
         }
        %>

     </select>
      <input type="submit" name="CancelRegistration" value="Cancel Registration"/>
</form>

 <form name ="form2" method ="post" action ="homepage.jsp">
    <input type="submit" name="return" value="Return"/>
</form>
 </center>
    </body>
</html>
