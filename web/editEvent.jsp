<%-- 
    Document   : editEvent
    Created on : 12 9, 10, 4:11:42 AM
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
    <body>
         <%

        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("adminIndex.jsp");
            }
        %>

         <%
            String eID, name, description, startdate, timestart, timeEnd, status, capacity, year, month, day;
            boolean result;
            if(request.getParameter("eID") != null && request.getParameter("eDesc")!= null && request.getParameter("eTS")!= null
           && request.getParameter("eTE")!= null  && request.getParameter("eYear")== "Year"
            && request.getParameter("eMonth")== "Month" && request.getParameter("eDay")== "Day"        ){

            eID = request.getParameter("eID");
           
            description = request.getParameter("eDesc");

            timestart = request.getParameter("eTS");
            timeEnd = request.getParameter("eTE");
            status = request.getParameter("status");

            year = request.getParameter("eYear");
            month = request.getParameter("eMonth");
            day = request.getParameter("eDay");

            Event newEvent = new Event();

            newEvent.setEID(eID);
            newEvent.setDescription(description);

            newEvent.setTimeStart(timestart);
            newEvent.setTimeEnd(timeEnd);
            newEvent.setStatus(status);
            newEvent.setYear(year);
            newEvent.setMonth(month);
            newEvent.setDay(day);


            result = new EventManager().editEvent(newEvent);
        }
        else
            out.println("Please Fill IN all information");

        %>

<body background ="http://img530.imageshack.us/img530/6118/bg2k0.jpg">
	<center><br><br><br><br><br>

        <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow"> Edit Event </h1>
		<br><br><br><br>
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
       
    <form name ="form1" method ="post" action ="">
      <select name="eID"  style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br><br>
      <%
         ConnectionFactory myFactory1 = ConnectionFactory.getFactory();
         Connection conn1 = myFactory1.getConnection();
         Statement st1 = conn1.createStatement();
         ResultSet rs1 = st1.executeQuery("SELECT eventID FROM eventlist");

        while(rs1.next())
        {
            out.println("<option>" + rs1.getString(1)+ "</option>");
         }
        %>
      </select>
      Event Description: <input type="text" name="eDesc" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Month: <select name="eMonth"style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
                    <option>Month</option>
                    <option value='01'>January</option>
                    <option value='02'>February</option>
                    <option value='03'>March</option>
                    <option value='04'>April</option>
                    <option value='05'>May</option>
                    <option value='06'>June</option>
                    <option value='07'>July</option>
                    <option value='08'>August</option>
                    <option value='09'>September</option>
                    <option value='10'>October</option>
                    <option value='11'>November</option>
                    <option value='12'>December</option>
                </select>
                Day: <select name="eDay" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
                    <option>Day</option>
                    <option value='01'>01</option>
                    <option value='02'>02</option>
                    <option value='03'>03</option>
                    <option value='04'>04</option>
                    <option value='05'>05</option>
                    <option value='06'>06</option>
                    <option value='07'>07</option>
                    <option value='08'>08</option>
                    <option value='09'>09</option>
                    <option value='10'>10</option>
                    <option value='11'>11</option>
                    <option value='12'>12</option>
                    <option value='13'>13</option>
                    <option value='14'>14</option>
                    <option value='15'>15</option>
                    <option value='16'>16</option>
                    <option value='17'>17</option>
                    <option value='18'>18</option>
                    <option value='19'>19</option>
                    <option value='20'>20</option>
                    <option value='21'>21</option>
                    <option value='22'>22</option>
                    <option value='23'>23</option>
                    <option value='24'>24</option>
                    <option value='25'>25</option>
                    <option value='26'>26</option>
                    <option value='27'>27</option>
                    <option value='28'>28</option>
                    <option value='29'>29</option>
                    <option value='30'>30</option>
                    <option value='31'>31</option>
                </select>
      Year:<input type ="text" name="eYear" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Event Time Start:<input type ="time" name="eTS" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Event Time End:<input type ="time" name="eTE" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br><br>
      <input type="submit" name="EditEvent" value="Submit"/>
    </form>

  <form name ="form2" method ="post" action ="adminPage.jsp">
    <input type="submit" name="return" value="Return"/>
</form>
        </center>
    </body>
</html>
