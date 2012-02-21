/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package UserPackage;

import DBConnection.*;
import java.sql.*;
import java.util.Vector;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/**
 *
 * @author Erik Sy
 */
public class EventManager {

    public boolean addEvent(Event newEvent) throws ParseException {
        boolean result = false;

        try {
            //Opens DB Connection
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();
            String dates= newEvent.getYear()+"-"+newEvent.getMonth()+"-"+newEvent.getDay();
            java.util.Date d;
            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            d = (java.util.Date)formatter.parse(dates);
            java.sql.Date date = new java.sql.Date(d.getTime());

            //Prepare SQL Query




            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO eventlist(name,description,startdate,timestart,finishtime,status) VALUES(?,?,?,?,?,?) ");

            //include parameters
            int i = 1;

            pstmt.setString(i++, newEvent.getName());
            pstmt.setString(i++, newEvent.getDescription());
            pstmt.setDate(i++, date);
            pstmt.setString(i++, newEvent.getTimeStart());
            pstmt.setString(i++, newEvent.getTimeEnd());
            pstmt.setString(i++, newEvent.getStatus());


            //Execute sql statement
            pstmt.executeUpdate();

            //close SQL connection
            conn.close();

            result = true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public boolean cancelEvent(Event newEvent) {
        boolean result = false;
        try {
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i = 1;

            PreparedStatement pstmt = conn.prepareStatement("UPDATE eventlist SET status ='Canceled' where name = ? ");

            //include parameters
            pstmt.setString(i++, newEvent.getName());


            //Execute sql statement
            pstmt.executeUpdate();

            //close SQL connection
            conn.close();

            result = true;


        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public boolean RAEvent(Event newEvent) {
        boolean result = false;
        try {
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i = 1;

            PreparedStatement pstmt = conn.prepareStatement("UPDATE eventlist SET status ='Active' where name = ? ");

            //include parameters
            pstmt.setString(i++, newEvent.getName());


            //Execute sql statement
            pstmt.executeUpdate();

            //close SQL connection
            conn.close();

            result = true;


        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public boolean registerEvent(Event newEvent) {
        boolean result=true;
        try {
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            //int i = 1; sayang memory (oc lng)
            PreparedStatement temp = conn.prepareStatement("SELECT eventname FROM eventjoined WHERE username =? AND eventname =?");
            temp.setString(1, newEvent.getUsername());
            temp.setString(2, newEvent.getName());
            ResultSet rs = temp.executeQuery();

            if (rs.next()) {
                result = false;
                rs.close();
                temp.close();
            }

            if (result) {
                PreparedStatement pstmt = conn.prepareStatement("INSERT INTO eventjoined (username, eventname) VALUES(?,?) ");

                //include parameters
                //sayang computation time :)) oc lng
                pstmt.setString(1, newEvent.getUsername());
                pstmt.setString(2, newEvent.getName());

                //Execute sql statement
                pstmt.executeUpdate();
            }
            //close SQL connection
            conn.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public boolean cancelRegistration(Event newEvent) {
        boolean result = false;
        try {
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i = 1;

            PreparedStatement pstmt = conn.prepareStatement("DELETE FROM eventjoined WHERE username = ? AND eventname = ? ");

            //include parameters
            pstmt.setString(i++, newEvent.getUsername());
            pstmt.setString(i++, newEvent.getName());

            //Execute sql statement
            pstmt.executeUpdate();

            //close SQL connection
            conn.close();

            result = true;


        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

     public Vector<String> viewUser(Event newEvent) {
        Vector<String> names = new Vector<String>();
        try {
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i = 1;

            PreparedStatement pstmt = conn.prepareStatement("SELECT username FROM eventjoined WHERE eventname = ?");
       
            pstmt.setString(i++, newEvent.getUsername());
            //pstmt.setString(i++, newEvent.getName());

            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                names.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return names;

    }
     public boolean editEvent(Event newEvent) throws ParseException {
        boolean result = false;

        try {
            //Opens DB Connection
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();
            String dates= newEvent.getYear()+"-"+newEvent.getMonth()+"-"+newEvent.getDay();
            java.util.Date d;
            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            d = (java.util.Date)formatter.parse(dates);
            java.sql.Date date = new java.sql.Date(d.getTime());

            //Prepare SQL Query




            PreparedStatement pstmt = conn.prepareStatement("UPDATE eventlist set description =?, startdate= ?,timestart = ?, finishtime = ? WHERE eventID = ?");

            //include parameters
            int i = 1;

           
            pstmt.setString(i++, newEvent.getDescription());
            pstmt.setDate(i++, date);
            pstmt.setString(i++, newEvent.getTimeStart());
            pstmt.setString(i++, newEvent.getTimeEnd());
            pstmt.setString(i++, newEvent.getEID());
          


            //Execute sql statement
            pstmt.executeUpdate();

            //close SQL connection
            conn.close();

            result = true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }
}
