<%-- 
    Document   : viewUser
    Created on : 11 16, 10, 4:33:12 PM
    Author     : Erik Sy
--%>

<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, DBConnection.*, UserPackage.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
<body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg">
 <center><br><br><br>
 <%

        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("adminIndex.jsp");
            }
        %>

        <%
            String user;

            user = request.getParameter("uname");

            Event newEvent = new Event();

            newEvent.setUsername(user);
           
          
      
           
        
            
           
            int j = 1;
            Vector<String> names = new EventManager().viewUser(newEvent);
            for(int i=0; i<names.size(); i++) {
                out.println(j + ". " + names.get(i));
                j++;
                %>
                <br>
                <%
            }

        %>

             <h1 class="drop-shadow">Event List</h1><br>
         <%
          ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM eventlist");
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>" + "<B>" + "Event ID" + "</td>");
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
                out.println("<td>" + rs.getString("eventID") + "</td>");
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
       
        <br>
        <br>
        <br>

        
<form name ="form1" method ="post" action ="">
     <select name="uname"  style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br><br>
      <%
         ConnectionFactory myFactory1 = ConnectionFactory.getFactory();
         Connection conn1 = myFactory1.getConnection();
         Statement st1 = conn.createStatement();
         ResultSet rs1 = st1.executeQuery("SELECT name FROM eventlist WHERE status ='Active' ");

        while(rs1.next())
        {
            out.println("<option>" + rs1.getString(1)+ "</option>");
         }
        %>
        <input type="submit" name="view" value="Get"/>
     </select>
</form>
<form name ="form2" method ="post" action ="adminPage.jsp">
    <br><input type="submit" name="return" value="Return"/>
</form>
       </center>
    </body>
</html>
