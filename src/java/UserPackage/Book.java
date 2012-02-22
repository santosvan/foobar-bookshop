/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package UserPackage;

import DBConnection.*;
import java.sql.*;


/**
 *
 * @author CCS
 */
public class Book {

   private String title;
    private String synopsis;
    private String author;
    private String price;
    private String year;
    
    public String getYear(){
        return year;
    }
    public void setYear(String year)
    {
        this.year = year;
    }
    public String getPrice(){
        return price;
    }
    public void setPrice(String price)
    {
        this.price = price;
    }
    public String getAuthor(){
        return author;
    }
    public void setAuthor(String author)
    {
        this.author = author;
    }
   public String getTitle(){
        return title;
    }
    public void setTitle(String title)
    {
        this.title = title;
    }
    
    public String getSynopsis(){
        return synopsis;
    }
    public void setSynopsis(String synopsis)
    {
        this.synopsis = synopsis;
    }

}
