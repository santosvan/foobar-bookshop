<%-- 
    Document   : addEvent
    Created on : 11 16, 10, 4:27:37 PM
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
        <br><br><br><br>
         <%

        String username = (String)session.getAttribute("username");
        if((String)session.getAttribute("username")== null)
            {
            response.sendRedirect("adminIndex.jsp");
            }
        %>

         <% 
            String name, description, startdate, timestart, timeEnd, status, capacity, year, month, day;
            boolean result;
            if(request.getParameter("eName") != null && request.getParameter("eDesc")!= null && request.getParameter("eTS")!= null
           && request.getParameter("eTE")!= null  && request.getParameter("eYear")== "Year"
            && request.getParameter("eMonth")== "Month" && request.getParameter("eDay")== "Day"        ){
            name = request.getParameter("eName");
            description = request.getParameter("eDesc");
            
            timestart = request.getParameter("eTS");
            timeEnd = request.getParameter("eTE");
            status = request.getParameter("status");
            
            year = request.getParameter("eYear");
            month = request.getParameter("eMonth");
            day = request.getParameter("eDay");

            Event newEvent = new Event();

            newEvent.setName(name);
            newEvent.setDescription(description);
        
            newEvent.setTimeStart(timestart);
            newEvent.setTimeEnd(timeEnd);
            newEvent.setStatus(status);
            newEvent.setYear(year);
            newEvent.setMonth(month);
            newEvent.setDay(day);
            

            result = new EventManager().addEvent(newEvent);
        }
        else
            out.println("Please Fill IN all information");

        %>
        
        
        
        

       
        <br><br><br><br>
           <style type="text/css">
	h1.drop-shadow { text-shadow: 4px 4px 8px blue }
	</style>

        <h1 class="drop-shadow"> ADD EVENT </h1><br>
    <form name ="form1" method ="post" action ="">
      Event Name: <input type ="text" name="eName" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Event Description: <input type="text" name="eDesc" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Event Month:<select name="eMonth" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
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
            Event Day: <select name="eDay" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
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
      
           Year <select name="eYear" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
                    <option>Year</option>
                    <option value='2011'>2011</option>
                    <option value='2012'>2012</option>
                    <option value='2013'>2013</option>
                    <option value='2014'>2014</option>
                    <option value='2015'>2015</option>
                    <option value='2016'>2016</option>
                    <option value='2017'>2017</option>
                    <option value='2018'>2018</option>
                    <option value='2019'>2019</option>
                    <option value='2020'>2020</option>
                    <option value='2021'>2021</option>
                    <option value='2022'>2022</option>
                    <option value='2023'>2023</option>
                    <option value='2024'>2024</option>
                    <option value='2025'>2025</option>
                    <option value='2026'>2026</option>
                    <option value='2027'>2027</option>
                    <option value='2028'>2028</option>
                    <option value='2029'>2029</option>
                    <option value='2030'>2030</option>
                    
                </select><br>
      Event Time Start:<input type ="time" name="eTS" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      Event Time End:<input type ="time" name="eTE" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;"><br>
      <br><input type="submit" name="AddEvent" value="Submit"/>
    </form>

<form name ="form2" method ="post" action ="adminPage.jsp">
    <input type="submit" name="return" value="Return"/>
</form>
   </center>
    </body>
</html>
