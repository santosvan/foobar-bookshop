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
    
            PreparedStatement addbook = conn.prepareStatement("INSERT INTO books (bookTitle, bookAuthor, bookYear, bookSynopsis, bookPrice,) VALUES (?,?,?,?,?)"); ;

            addbook.setString(i++, newBook.getTitle());
            addbook.setString(i++, newBook.getAuthor());
            addbook.setString(i++, newBook.getYear());
            addbook.setString(i++, newBook.getSynopsis());
            addbook.setString(i++, newBook.getPrice());

            addbook.executeUpdate();
            result = true; 
            
            conn.close();
        }
        
        
        catch(SQLException ex)
        { ex.printStackTrace();}

        return result;

    }

    
    

}
