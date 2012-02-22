/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package UserPackage;

import DBConnection.*;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *
 * @author CCS
 */
public class UserManager {

    public boolean checkUser(String username, String password)
    {
        boolean result=false;
        try{
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i=1;
    
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM user WHERE username = ? AND password = ?");

            pstmt.setString(i++, username);
            pstmt.setString(i++, password);

            ResultSet rs = pstmt.executeQuery();

            while(rs.next())
            {
                result=true;
            }
            conn.close();
        }
        catch(SQLException ex)
        { ex.printStackTrace();}

        return result;

    }

    public boolean checkUser2(String username)
    {
        boolean result=false;
        try{
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i=1;
    
            PreparedStatement pstmt = conn.prepareStatement("SELECT username FROM user WHERE username = ?");

            pstmt.setString(i++, username);

            ResultSet rs = pstmt.executeQuery();

            while(rs.next())
            {
                result=true;
            }
            conn.close();
        }
        catch(SQLException ex)
        { ex.printStackTrace();}

        return result;

    }
    
    public boolean checkAdmin(String username, String password)
    {
        boolean result=false;
    
        try{
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i=1;

            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM admin WHERE adminUsername = ? AND adminPassword = ?");

            pstmt.setString(i++, username);
            pstmt.setString(i++, password);
            
            ResultSet rs = pstmt.executeQuery();

            while(rs.next())
            {
                result=true;
            }
            conn.close();
        }
        catch(SQLException ex)
        { ex.printStackTrace();}

        return result;

    }

    public boolean addUser(User newUser)throws ParseException
    {
            boolean result=false;

        try
        {
            //Opens DB Connection
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();
            String dates= newUser.getccexpyr()+"-"+newUser.getccexpmon()+"-"+newUser.getccexpday();
            java.util.Date d;
            DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
            d = (java.util.Date)formatter.parse(dates);
            java.sql.Date ccexpdate = new java.sql.Date(d.getTime());

            


            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customer(customerUsername,customerPassword,customerFirstName,customerMiddleName, customerLastName, customerAddress,customerEmail,customerTelNo,customerLoginStatus) VALUES(?,?,?,?,?,?,?,?,?)");

            //include parameters
            int i=1, j =1, k = 1;
           
            
            
            pstmt.setString(i++, newUser.getUsername());
            pstmt.setString(i++, newUser.getPassword());
            pstmt.setString(i++, newUser.getfName());
            pstmt.setString(i++, newUser.getmName());
            pstmt.setString(i++, newUser.getlName());
            pstmt.setString(i++, newUser.getAddress());
            pstmt.setString(i++, newUser.getEmail());
            pstmt.setString(i++, newUser.getphoneNo());
            pstmt.setString(i++, "No");
            pstmt.executeUpdate();
            
            PreparedStatement pstmt1 = conn.prepareStatement("SELECT customerID from customer where username = ?");
            pstmt1.setString(j++, newUser.getUsername());
            ResultSet rs= pstmt1.executeQuery();
            int a = rs.getInt(1);
            PreparedStatement pstmt2 = conn.prepareStatement("INSERT into creditcard (creditCardNum, creditCardName, creditCardType, creditCardExp, customer_customerID) VALUES(?,?,?,?,?) ");
            pstmt2.setString(k++, newUser.getccnum());
            pstmt2.setString(k++, newUser.getccname());
            pstmt2.setString(k++, newUser.getcctype());
            pstmt2.setDate(k++, ccexpdate);
            pstmt2.setInt(k++, a);
            //Execute sql statement
            pstmt2.executeUpdate();
            
            
          /* 
            PreparedStatement pstmt1 = conn.prepareStatement("INSERT into creditcard(creditCardNumber, creditCardName, creditCardType, creditCardExp) VALUES (?,?,?,?)");
            pstmt1.setString(j++, newUser.getccnum());
            pstmt1.setString(j++, newUser.getccname());
            pstmt1.setString(j++, newUser.getcctype());
            pstmt1.setDate(j++, ccexpdate);
            
            
            pstmt1.executeUpdate();
            */

            //close SQL connection
            conn.close();
            
            result= true;
            

        }
        catch(SQLException ex)
        { ex.printStackTrace();}
    
        return result;
    }    
    

}
