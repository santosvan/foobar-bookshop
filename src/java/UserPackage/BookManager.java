/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package UserPackage;

import DBConnection.*;
import java.sql.*;
import java.text.ParseException;

/**
 *
 * @author CCS
 */
public class BookManager {

    public boolean addBook(Book newBook)throws ParseException
    {
        boolean result=false;
        try{
            ConnectionFactory myFactory = ConnectionFactory.getFactory();
            Connection conn = myFactory.getConnection();

            int i=1;
    
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO books WHERE username = ? AND password = ?");

            pstmt.setString(i++, newBook.getTitle());
            pstmt.setString(i++, newBook.getAuthor());

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

    
    

}
