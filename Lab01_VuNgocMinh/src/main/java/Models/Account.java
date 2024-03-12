/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Minh Vu
 */
public class Account {
    public String username;
    public String password;
    public String fullname;
    public String gender;
    public String date;
    public String department;

    public Account() {
    }

    public Account(String username, String password, String fullname, String gender, String date, String department) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.gender = gender;
        this.date = date;
        this.department = department;
    }

    public String getName() {
        return fullname;
    }


    
}