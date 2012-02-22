<%-- 
    Document   : index
    Created on : 10 13, 10, 3:03:36 PM
    Author     : CCS
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBConnection.ConnectionFactory"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href= "main.css" type="text/css"/>
        <link rel = "stylesheet" href= "menu.css" type="text/css"/>
    </head>
    <body>
     
        <div id="header">
        <h1>
            FOOBAR.
        </h1>
        <h2>
            more than just books.
        </h2>
        </div>
        
        <div id="tabs24"><ul>
        <li><a href="index.php" >About Us</a></li>
        <li><a href="index.php" >Home</a></li>
        <li><a href="index.php" >Books</a></li>
        <li><a href="index.php" >Magazines</a></li>
        <li><a href="index.php" >Audio CDs</a></li>
        <li><a href="index.php" >DVDs</a></li>
            </ul>
        </div>

        <div id="maincontainer">
        <h2> Login</h2>
        <form name ="login" method="post" action="loginAction.jsp">
            Username: <input type ="text" name="username">
            Password: <input type ="password" name ="password"><br>
            <input type ="submit" name="login" value ="Login"/>
            <a href ="forgotpassword.jsp" > Forgot Password? </a>
        </form>
        
       
        <h2> Register now </h2>
        <form name ="form1"method ="post" action="registrationAction.jsp">
            Username: <input type ="text" name ="username"><br>
            Password: <input type ="password" name ="password"><br>
            First Name: <input type ="text" name ="fName"><br>
            Middle Name: <input type ="text" name="mName"><br>
            Last Name: <input type ="text" name ="lName"><br>
            Email Address: <input type="text" name="eAdd"><br>
            Telephone Number: <input type="text" name="telNo"><br>
            Billing/Deliver Address: <input type ="text" name="Address"><br>
            Credit Card Number: <input type ="text" name="CCnumber"><br>
            Credit Card Name: <input type="text" name="CCname"><br>
            Credit Card Type: <select name="CCtype"><br>
                <option>Type</option>
                <option value="Visa">Visa</option>
                <option value="Master Card">Master Card</option>
            </select>
            Credit Card Expire Month:<select name="CCexpireMon" >
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
            Credit Card Expire Day: <select name="CCexpireDay">
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
      
           Credit Card Expire Year <select name="CCexpireYr">
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
            <input type="submit" name="submit" value ="Register"/>
        </form>
        </div>
        
                
            
    </body>
</html>
