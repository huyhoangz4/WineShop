/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author HOANGPC
 */
public class Account {

    private int id;
    private String username;
    private String email;
    private String password;
    private String phoneNumber;
    private int role;

    private String address;

    public Account() {
    }

    public Account(int id, String username, String email, String password, String phoneNumber, int role, String address) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.role = role;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + ", phoneNumber=" + phoneNumber + ", role=" + role + ", address=" + address + '}';
    }

   
}
