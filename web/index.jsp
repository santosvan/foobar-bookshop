<%-- 
    Document   : index
    Created on : 01 19, 12, 6:47:15 PM
    Author     : RES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Foobar Bookshop </h1>
        <h2> Login</h2>
        <form name ="login" method="post" action="">
            Username: <input type ="text" name="username">
            Password: <input type ="password" name ="password"><br>
            <input type ="submit" name="login" value ="Login"/> 
        <h2> Register now </h2>
        <form name ="registration" method ="post" action="">
            Username: <input type ="text" name ="username"><br>
            Password: <input type ="password" name ="password"><br>
            First Name: <input type ="text" name ="fName"><br>
            Middle Initial: <input type ="text" name="MI"><br>
            Last Name: <input type ="text" name ="lName"><br>
            Email Address: <input type="text" name="eAdd"><br>
            Billing/Deliver Address: <input type ="text" name="Address"><br>
            Credit Card Number: <input type ="text" name="CCnumber"><br>
            Credit Card Name: <input type="text" name="CCname"><br>
            Credit Card Type: <input type ="text" name="CCtype"><br>
            Event Month:<select name="CCexpireMon" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
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
            Event Day: <select name="CCexpireDay" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
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
      
           Year <select name="CCexpireYr" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; background-color: #72A4D2;">
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
                
            
    </body>
</html>
