<%-- 
    Document   : adminPage
    Created on : 11 16, 10, 11:54:55 AM
    Author     : Erik Sy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

       
    </head>
    <body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg"> <center><br><br><br><br>

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
       

        <form name ="form1" method ="post" action ="addEvent.jsp">

      <br><input type="submit" name="AddEvent" value="Add Event"/>
    </form>
     <form name ="form6" method ="post" action ="editEvent.jsp">
      <br><input type="submit" name="editEvent" value="Edit Event"/>
    </form>

    <form name ="form2" method ="post" action ="cancelEvent.jsp">
      <br><input type="submit" name="CancelEvent" value="Cancel Event"/>
    </form>
    <form name ="form3" method ="post" action ="RAevent.jsp">

      <br><input type="submit" name="ReactivateEvent" value="Reactivate Event"/>
    </form>

     <form name ="form4" method ="post" action ="viewEvents.jsp">

      <br><input type="submit" name="ViewEvents" value="View Events"/>
    </form>

    <form name ="form5" method ="post" action ="viewUser.jsp">

     <br> <input type="submit" name="ViewUser" value="View Attendees"/>

      <br>
      <br>
      <a href="Logout.jsp">LOG OUT</a><br><br><br><br>
    </form> </center>
    </body>
</html>
