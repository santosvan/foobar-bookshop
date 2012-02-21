/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package UserPackage;

/**
 *
 * @author Erik Sy
 */
public class Event {
    private String EID;
    private String username;
    private String name;
    private String description;
    private String startdate;
    private String timeStart;
    private String timeEnd;
    private String status;
    private String capacity;
    private String month;
    private String day;
    private String year;
    /**
     * @return the username
     */
    public String getUsername(){
      return username;
    }

    public void setUsername(String username){
        this.username = username;
    }
    public String getName() {
        return name;
    }

    /**
     * @param username the username to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the password
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param password the password to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the name
     */
    public String getStartDate() {
        return startdate;
    }

    /**
     * @param name the name to set
     */
    public void setStartDate(String startdate) {
        this.startdate = startdate;
    }

    /**
     * @return the address
     */
    public String getTimeStart() {
        return timeStart;
    }

    /**
     * @param address the address to set
     */
    public void setTimeStart(String timeStart) {
        this.timeStart = timeStart;
    }

    /**
     * @return the email
     */
    public String getTimeEnd() {
        return timeEnd;
    }

    /**
     * @param email the email to set
     */
    public void setTimeEnd(String timeEnd) {
        this.timeEnd = timeEnd;
    }

    /**
     * @return the contactNo
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setStatus(String status) {
        this.status = "Active";
    }

    public String getCapacity() {
        return capacity;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }
    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }
    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;

    }
     public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;

    }
      public String getEID() {
        return EID;
    }

    public void setEID(String EID) {
        this.EID = EID;

    }
}


