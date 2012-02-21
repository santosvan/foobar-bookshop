/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package UserPackage;

/**
 *
 * @author CCS
 */
public class User {

    private String username;
    private String password;
    private String fName;
    private String lName;
    private String mName;
    private String address;
    private String email;
    private String phoneNo;
    private String cellNo;
    private String ccexpmon;
    private String ccexpday;
    private String ccexpyr;
    private String ccnum;
    private String ccname;
    private String cctype;
     
    
    public String getmName(){
        return mName;
    }
    public void setmName(String mName)
    {
        this.mName = mName;
    }
    public String getlName(){
        return lName;
    }
    public void setlName(String lName)
    {
        this.lName = lName;
    }
    
    public String getccexpmon(){
        return ccexpmon;
    }
    public void setccexpmon(String ccexpmon)
    {
        this.ccexpmon = ccexpmon;
    }
    public String getccexpday(){
        return ccexpday;
    }
    public void setccexpday(String ccexpday)
    {
        this.ccexpday = ccexpday;
    }
     public String getccexpyr(){
        return ccexpyr;
    }
    public void setccexpyr(String ccexpyr)
    {
        this.ccexpyr = ccexpyr;
    }
     public String getccnum(){
        return ccnum;
    }
    public void setccnum(String ccnum)
    {
        this.ccnum = ccnum;
    }
     public String getccname(){
        return ccname;
    }
    public void setccname(String ccname)
    {
        this.ccname = ccname;
    }
     public String getcctype(){
        return cctype;
    }
    public void setcctype(String cctype)
    {
        this.cctype = cctype;
    }
   
    
    
    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the name
     */
    public String getfName() {
        return fName;
    }

    /**
     * @param name the name to set
     */
    public void setfName(String fName) {
        this.fName = fName;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contactNo
     */
    public String getphoneNo() {
        return phoneNo;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setphoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getcellNo() {
        return cellNo;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setcellNo(String cellNo) {
        this.cellNo = cellNo;
    }
   
}
