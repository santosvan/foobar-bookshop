<%-- 
    Document   : registration.jsp
    Created on : 10 27, 10, 4:49:23 PM
    Author     : CCS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*, DBConnection.*, UserPackage.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        
    </head>
    <body>
      
      <%
            String username, password, fName, mName, lName, address, email, phoneNo, cellNo, CCNum, CCName, 
                    ccexpmonth, ccexpday, ccexpyear, ccnum, ccname, cctype;
            boolean result;

            username = request.getParameter("username");
            password = request.getParameter("password");
            fName = request.getParameter("fName");
            mName = request.getParameter("mName");
            lName = request.getParameter("lName");
            address = request.getParameter("Address");
            email = request.getParameter("eAdd");
            phoneNo = request.getParameter("telNo");
            ccnum = request.getParameter("CCnumber");
            ccname = request.getParameter("CCname");
            cctype = request.getParameter("CCtype");
            ccexpmonth = request.getParameter("CCexpireMon");
            ccexpday = request.getParameter("CCexpireDay");
            ccexpyear = request.getParameter("CCexpireYr");

            User newUser = new User();

            newUser.setAddress(address);
            newUser.setEmail(email);
            newUser.setfName(fName);
            newUser.setmName(mName);
            newUser.setlName(lName);
            newUser.setccexpmon(ccexpmonth);
            newUser.setccexpday(ccexpday);
            newUser.setccexpyr(ccexpyear);
            newUser.setPassword(password);
            newUser.setUsername(username);
            newUser.setccname(ccname);
            newUser.setccnum(ccnum);
            newUser.setcctype(cctype);
            newUser.setphoneNo(phoneNo);
            

            result = new UserManager().addUser(newUser);

           
                response.sendRedirect("index.jsp");
          


        %>
        
    </body>
</html>
